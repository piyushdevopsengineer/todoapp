terraform {
  required_providers {
    azurerm = { 
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "def13e29-f65a-496b-b10e-3cffca9a480f"
}

resource "azurerm_resource_group" "rg1" {
  name     = "piyush-rg1"
  location = "westus"
}
resource "azurerm_resource_group" "rg3" {
  name     = "piyush-rg3"
  location = "westus"
}