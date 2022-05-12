#resource group
variable "resource_group_name" {
  description = "the name of the resource group you'll use"
  type        = string
}
variable "location" {
  description = "the location where you want the resource group to be created"
  type        = string
}

#SQL Server
variable "primary_sql_server_name" {
  description = "primary SQL server Name"
  type        = string
  validation {
    condition     = length(var.primary_sql_server_name) > 2 && length(var.primary_sql_server_name) <= 63
    error_message = "Server Name should be Available and must contain only hyphens, numbers and lowercase letters."
  }
}
variable "administrator_login" {
  description = "The administrator login name for the new SQL Server"
  type        = string
}
variable "administrator_login_password" {
  description = "The password associated with the administrator_login user"
  type        = string
}
variable "server-version" {
  description = "The version for the new server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server)."
  type        = string
  validation {
    condition     = contains(["2.0", "12.0"], var.server-version)
    error_message = "Possible values are '2.0' and '12.0'."
  }
  default = "12.0"
}
