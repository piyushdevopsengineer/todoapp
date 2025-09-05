terraform {
  required_providers {
    azurerm = {
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "bcf304d8-21b8-4358-9c77-54b5dd26f938"
}

resource "azurerm_resource_group" "rg1" {
  name     = "piyush-rg1"
  location = "westus"
}