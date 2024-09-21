// resource group module
// resource_group_module - any name can be taken
// modules_rg = name from resource_group modules variable
// env_rg = varible defined in dev environment


module "resource_group_module" {
  source     = "../../modules/resource_group"
  modules_rg = var.env_rg
}

module "storage_account" {
  source          = "../../modules/storage_account"
  modules_storage = var.env_storage
  depends_on      = [module.resource_group_module]
}