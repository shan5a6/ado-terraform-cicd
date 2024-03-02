terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.9.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "b3-rg1"
    storage_account_name = "terraformcicdremote"
    container_name       = "remotestatefile"
    key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  # Configuration options
  features {}

}