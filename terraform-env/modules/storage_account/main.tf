resource "azurerm_storage_account" "do_not_delete_storage" {
  for_each                 = var.modules_storage
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  name                     = each.value.name
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type

}