resource "azurerm_storage_account" "example" {
  for_each = var.storage_accounts

  name                     = each.value.stg_name
  resource_group_name      = each.value.rg_name
  location                 = each.value.location
  account_tier             = each.value.tier
  account_replication_type = each.value.redundancy
}
