module "resource_group" {
    source = "../Charlie_Modules/azurerm_resource_groups"
    resource_groups = var.rg
}

module "app_service_plan_and_webapp" {
    depends_on = [ module.resource_group ]
    source = "../Charlie_Modules/azurerm_webapps"
    asp = var.AppSP
    webapps = var.webapp
}

module "storage_account" {
    depends_on = [module.resource_group]
    source = "../Charlie_Modules/azurerm_storage_accounts"
    storage_account = var.storageA
}