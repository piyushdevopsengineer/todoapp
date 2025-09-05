terraform {
  required_providers {
    azurerm = {
      version = "4.37.0"
    }
  }
  backend "azurerm" {
    resource           = "piyush_rg"  # Can also be set via `ARM_ACCESS_KEY` environment variable.
    storage_account_name = "piyushstg0925"                                 # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "piyushcont0925"                                  # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "pipeline.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

}

provider "azurerm" {
  features {}
  
  subscription_id = "ecf1c36f-8eba-469e-841f-a595c299e914"
}

resource "azurerm_resource_group" "rg1" {
  name     = "rites-rg1"
  location = "westus"
}

resource "azurerm_resource_group" "rg2" {
  name     = "piyush-rg2"
  location = "eastus"
}