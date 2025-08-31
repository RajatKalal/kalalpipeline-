terraform {
  backend "azurerm" {
    resource_group_name   = "kalal_rg"                 
    storage_account_name  = "kalalstorageaccount"      
    container_name        = "kalalcontainer"                 
    key                   = "terraform.tfstate"        
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "a87c6699-9b7e-4873-a0c4-8660499ba9ea"
}

resource "azurerm_resource_group" "rg4" {
  name     = "kalal_rg"
  location = "Central India"
}
resource "azurerm_storage_account" "stg" {
  name                     = "kalalstorageaccount"   
  resource_group_name      = "kalal_rg"
  location                 = "Central India"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

