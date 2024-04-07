resource "azurerm_resource_group" "terraform" {
  name     = "azure-functions-rg-terraform"
  location = "East US"
}

resource "azurerm_storage_account" "terraform" {
  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_app_service_plan" "example" {
  name                = var.azurerm_app_service_plan
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    tier = var.tier
    size = var.size
  }
}

resource "azurerm_function_app" "example" {
  name                       = "test-azure-functions"
  location                   = var.location
  resource_group_name        = var.resource_group_name
  app_service_plan_id        = azurerm_app_service_plan.example.id
  storage_account_name       = azurerm_storage_account.terraform.name
  storage_account_access_key = var.primary_access_key

  app_settings {
     FUNCTIONS_WORKER_RUNTIME = "python"
  }

  site_config {
    linux_fx_version = "python|3.9"
  }
}
