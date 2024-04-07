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

  subscription_id = ""
  client_id       = ""
  client_secret   = ""
  tenant_id       = ""
}
