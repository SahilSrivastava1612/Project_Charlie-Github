rg = {
    "charlie_rg_prod_001" = "South Africa North"
    "rg-app-CICD-prod-001" = "South Africa North"
}

storageA = {
    "stappcicd0001" = {
        name                     = "stappcicd0001"
        location                 = "South Africa North"
        resource_group_name      = "rg-app-CICD-prod-001"
        account_tier             = "Standard"
        account_replication_type = "LRS"
    }
}

storage_container = {
    "tfstate" = {
        name                    = "tfstate"
        storage_account_name    = "stappcicd0001"
        resource_group_name = "rg-app-CICD-prod-001"
        container_access_type   = "private"
    }
}

data_storage_account = {
    "stappcicd0001" = {
        name                = "stappcicd0001"
        resource_group_name = "rg-app-CICD-prod-001"
    }
}

AppSP = {
    "my-asp-linux-001" = {
        name                = "my-asp-linux-001"
        location            = "South Africa North"
        resource_group_name = "charlie_rg_prod_001"
        os_type             = "Linux"
        sku_name            = "F1"
    }
}

webapp = {                                                  # Webapp for NodeJs or React app Deployment
    "charlie-webapp-001" = {
        name                = "charlie-webapp-REACT-001"
        location            = "South Africa North"
        resource_group_name = "charlie_rg_prod_001"
        service_plan_key    = "my-asp-linux-001"
        runtime             = "node"
        version             = "18-lts"
    }
    }



