terraform {
  backend "azurerm" {
    resource_group_name   = "terraform"   # resource group name
    storage_account_name  = "narsiterraform123"  # which we can create
    container_name        = "terraformcontainer"   #we need to create and specify
    key                   = "terraform.tfstate"  #state file name
  }
}
