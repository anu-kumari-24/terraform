resource "azurerm_resource_group" "do_not_delete_rg" {
  for_each = var.modules_rg
  name     = each.value.name
  location = each.value.location
}
