# File for variable definition

variable "name" {
  type = "string"
  default = "sql-server"
}

variable "resource_group_name" {
  type = "string"
}

variable "location" {
  type = "string"
}

variable "version" {
  type = "string"
  default = "12.0"
}

variable "administrator_login" {
  type = "string"
}

variable "administrator_login_password" {
  type = "string"
}

variable "sql_firewall_rules" {
  type = "map"
  default = {
    "azure-internal" = "0.0.0.0"
  }
}