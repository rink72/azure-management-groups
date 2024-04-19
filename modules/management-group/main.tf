resource "azurerm_management_group" "management_group" {
  display_name = var.display_name
  parent_management_group_id = var.parent_id
}

output "id" {
  value = azurerm_management_group.management_group.id
}