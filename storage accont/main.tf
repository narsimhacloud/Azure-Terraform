# created a storage account using below command.
#az group create --name terraform --location eastus ; az storage account create --name narsiterraform123 --resource-group terraform --location eastus --sku Standard_LRS --kind BlobStorage --access-tier Cool

#below command display the storage account details.
#az storage account show --name narsiterraform123 --resource-group terraform




/*terraform {
  backend "azurerm" {
    resource_group_name   = "terraform"   # resource group name
    storage_account_name  = "narsiterraform123"  # which we can create
    container_name        = "terraformcontainer"   #we need to create and specify
    key                   = "terraform.tfstate"  #state file name
  }
}
*/

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "myrg" {
  name     = "terraform"  // Replace with your desired resource group name
  location = "East US"    // Replace with your desired location
}

resource "azurerm_storage_account" "mystorageac" {
  name                     = "narsiterraform123"                // Replace with your desired storage account name
  resource_group_name      = azurerm_resource_group.name
  location                 = azurerm_resource_group.location
  account_tier             = "Standard"                         // Replace with your desired account tier (e.g., "Standard")
  account_replication_type = "LRS"                              // Replace with your desired replication type (e.g., "LRS")
  #enable_blob_encryption   = true
  access_tier              = "Cool"         // Replace with your desired access tier (e.g., "Cool")
}

output "storage_account_id" {
  value = azurerm_storage_account.id
}
