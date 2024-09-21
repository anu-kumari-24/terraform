env_rg = {
  rg1 = {
    name     = "do_not_delete_rg"
    location = "eastus"
  }
}

env_storage = {
  sg1 = {
    name                     = "donotdeletestorage"
    location                 = "eastus"
    resource_group_name      = "do_not_delete_rg"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}