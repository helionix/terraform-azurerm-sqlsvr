# Main terraform file for resources

resource "azurerm_sql_server" "sql-server" {
  name = "${var.name}"
  resource_group_name = "${var.resource_group_name}"
  location = "${var.location}"
  version = "${var.version}"
  administrator_login = "${var.administrator_login}"
  administrator_login_password = "${var.administrator_login_password}"
}


resource "azurerm_sql_firewall_rule" "sql-firewall-rules" {
  count = "${length(keys(var.sql_firewall_rules))}"
  name                = "${element(keys(var.sql_firewall_rules), count.index)}"
  resource_group_name = "${var.resource_group_name}"
  server_name         = "${azurerm_sql_server.sql-server.name}"
  start_ip_address    = "${element(values(var.sql_firewall_rules), count.index)}"
  end_ip_address      = "${element(values(var.sql_firewall_rules), count.index)}"
}