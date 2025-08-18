rg = {
     charlie_rg_prod_001 = {
        name     = "charlie_rg_prod_001"
        location = "South Africa North"
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
        startup_command     = "pm2 serve /home/site/wwwroot --no-daemon"
    }

    "charlie-webapp-002" = {
        name                = "charlie-webapp-ANGULAR-001"
        location            = "South Africa North"
        resource_group_name = "charlie_rg_prod_001"
        service_plan_key    = "my-asp-linux-001"
        runtime             = "node"
        version             = "16-lts"
        startup_command     = "pm2 serve /home/site/wwwroot --no-daemon --spa"
    }

    "charlie-webapp-003" = {
        name                = "charlie-webapp-NEXTJS-001"
        location            = "South Africa North"
        resource_group_name = "charlie_rg_prod_001"
        service_plan_key    = "my-asp-linux-001"
        runtime             = "node"
        version             = "18-lts"
        startup_command     = "npm run start"
    }

}

