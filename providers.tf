terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.9.0"
    }
  }
    backend "azurerm" {
        resource_group_name  = "b3-rg1" # Resource Group Name
        storage_account_name = "dvsterrastate" # Storage Account Name
        container_name       = "dvsterrastate " # Container/Blob Name
        key                  = "terraform.tfstate" # State File Name
    }

}

provider "azurerm" {
  # Configuration options
        features {}

}