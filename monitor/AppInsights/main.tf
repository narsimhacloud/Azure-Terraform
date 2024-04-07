provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "my_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_application_insights" "my_appinsights" {
  name                = "tf-test-appinsights"
  location            = azurerm_resource_group.my_rg.location
  resource_group_name = azurerm_resource_group.my_rg.name
  application_type    = "web"
}

output "instrumentation_key" {
  value = azurerm_application_insights.my_appinsights.instrumentation_key
}

output "app_id" {
  value = azurerm_application_insights.my_appinsights.app_id
}
