provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "my_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "my_vnet" {
  name                = var.virtual_network_name
  address_space       = var.virtual_network_address_space
  location            = azurerm_resource_group.location
  resource_group_name = azurerm_resource_group.name
}

resource "azurerm_subnet" "my_snet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.name
  virtual_network_name = azurerm_virtual_network.name
  address_prefixes     = var.subnet_address_prefixes
}

resource "azurerm_express_route_circuit" "my_erc" {
  name                = var.express_route_circuit_name
  location            = azurerm_resource_group.location
  resource_group_name = azurerm_resource_group.name
  sku                 = var.express_route_circuit_sku
  bandwidth_in_gbps   = var.express_route_circuit_bandwidth_in_gbps

  tags = var.tags

  service_provider_properties {
    service_provider_name = var.service_provider_name
    peering_location      = var.peering_location
  }

  service_provider_authorization {
    express_route_id = var.express_route_id
  }
}
