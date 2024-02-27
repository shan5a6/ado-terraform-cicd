terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.9.0"
    }
  }
    backend "azurerm" {
        resource_group_name  = "b3-rg1"
        storage_account_name = "dvsterrastate"
        container_name       = "stateconfiguration"
        key                  = "terraform.tfstate"
    }

}

provider "azurerm" {
  # Configuration options
        features {}

}