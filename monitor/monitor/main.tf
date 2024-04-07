provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-rg"
  location = "west europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "examplestorageaccount"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_kind             = "StorageV2"
  account_replication_type = "LRS"
}

resource "azurerm_monitor_aad_diagnostic_setting" "example" {
  name               = "setting1"
  storage_account_id = azurerm_storage_account.example.id
  enabled_log {
    category = "SignInLogs"
    retention_policy {
      enabled = true
      days    = 1
    }
  }
  enabled_log {
    category = "AuditLogs"
    retention_policy {
      enabled = true
      days    = 1
    }
  }
  enabled_log {
    category = "NonInteractiveUserSignInLogs"
    retention_policy {
      enabled = true
      days    = 1
    }
  }
  enabled_log {
    category = "ServicePrincipalSignInLogs"
    retention_policy {
      enabled = true
      days    = 1
    }
  }
}
