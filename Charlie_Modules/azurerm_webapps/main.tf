resource "azurerm_service_plan" "asp" {
    
    for_each = var.asp
    
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    os_type = each.value.os_type
    sku_name = each.value.sku_name
}

resource "azurerm_linux_web_app" "webapps" {
    
    for_each = var.webapps
    
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    service_plan_id = azurerm_service_plan.asp[each.value.service_plan_key].id
    
   site_config {
    always_on = false

     app_command_line = try(each.value.startup_command, null)  #If startup_command exists in tfvars (like for your React app), it will use it, if not it will not set it

   application_stack {
     # NodeJS
      node_version        = each.value.runtime == "node"   ? each.value.version : null

      # Python
      python_version      = each.value.runtime == "python" ? each.value.version : null

      # .NET
      dotnet_version      = each.value.runtime == "dotnet" ? each.value.version : null

      # Java
      java_version        = each.value.runtime == "java"   ? each.value.java_version : null
      java_server         = each.value.runtime == "java"   ? each.value.java_server : null
      java_server_version = each.value.runtime == "java"   ? each.value.java_server_version : null     #nodejs 18 version
  }
} 
    app_settings = {
        "WEBSITE_RUN_FROM_PACKAGE" = "1"
    }
}