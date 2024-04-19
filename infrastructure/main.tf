
data "azurerm_management_group" "parent" {
  display_name = "Tenant Root Group"
}

module "corp_one_root" {
  source   = "../modules/management-group"

  display_name = "Corporation one root"
  parent_id = data.azurerm_management_group.parent.id
}

module "corp_one_platform" {
  source   = "../modules/management-group"

  display_name = "Corporation one platform"
  parent_id = module.corp_one_root.id
}

module "corp_one_connectivity" {
  source   = "../modules/management-group"

  display_name = "Corporation one connectivity"
  parent_id = module.corp_one_platform.id
}