terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-app-CICD-prod-001"
    storage_account_name = "stappcicd0001"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  
  features {}
}