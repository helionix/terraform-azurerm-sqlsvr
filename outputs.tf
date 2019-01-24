# File for module outputs

output "id" {
  value = "${azurerm_sql_server.sql-server.id}"
}

output "name" {
  value = "${azurerm_sql_server.sql-server.name}"
}

output "fully_qualified_domain_name" {
  value = "${azurerm_sql_server.sql-server.fully_qualified_domain_name}"
}

output "administrator_login" {
  value = "${azurerm_sql_server.sql-server.administrator_login}"
}

output "administrator_login_password" {
  value = "${azurerm_sql_server.sql-server.administrator_login_password}"
}

output "sql-firewall-rules-ids" {
  value = "${azurerm_sql_firewall_rule.sql-firewall-rules.*.id}"
}

output "sql-firewall-rules-names" {
  value = "${azurerm_sql_firewall_rule.sql-firewall-rules.*.name}"
}