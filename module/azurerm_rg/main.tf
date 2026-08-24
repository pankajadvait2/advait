resource "azurerm_resource_group" "rg" {
    for_each = var.rgs

    name = each.value.name
    location = each.value.location
}
locals {
  azure_client_id     = "12345678-1234-1234-1234-123456789abc"
  azure_client_secret = "abcdefghijklmnopqrstuvwxyz1234567890"
  azure_tenant_id     = "87654321-4321-4321-4321-0987654321ab"
}