provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name  
  location = var.location 
}
resource "azurerm_mssql_server" "primary_server" {
  name                         = var.primary_sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.server-version
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
}
