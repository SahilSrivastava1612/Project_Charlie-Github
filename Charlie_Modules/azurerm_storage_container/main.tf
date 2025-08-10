resource "azurerm_storage_container" "container" {
    
    for_each = var.storage_container

    name = each.value.name
    storage_account_id = data.azurerm_storage_account.datastorage[each.value.storage_account_name].id
    container_access_type = each.value.container_access_type
}