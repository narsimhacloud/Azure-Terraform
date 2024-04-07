/*
az login

az account list

az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/c40c3-86d4-772006e9136a"
*/



/*
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.95.0"
    }
  }
}
*/
provider "azurerm" {
  alias = "backend"  # Add an alias to differentiate this configuration
  features {}

  subscription_id = "c40c3148-7e6d4-772006e9136a"
  client_id       = "1f8045fb-d487-4a0f5ae6a828"
  client_secret   = "jWB8Q~1s4~-jrkfIG2oFmYr21hbqb2e"
  tenant_id       = "0df65615-9adf-4f63145d2a83"
}
