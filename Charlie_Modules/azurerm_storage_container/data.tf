data "azurerm_storage_account" "datastorage" {
    for_each = var.data_storage_account
    
    name                = each.value.name
    resource_group_name = each.value.resource_group_name
}