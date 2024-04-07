provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "my_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "my_vnet" {
  name                = var.virtual_network_name
  location            = azurerm_resource_group.my_rg.location
  resource_group_name = azurerm_resource_group.my_rg.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_virtual_wan" "my_vwan" {
  name                = "my-vwan"
  resource_group_name = azurerm_resource_group.my_rg.name
  location            = azurerm_resource_group.my_rg.location
}

resource "azurerm_virtual_hub" "my_hub" {
  name                = "my-hub"
  resource_group_name = azurerm_resource_group.my_rg.name
  location            = azurerm_resource_group.my_rg.location
  virtual_wan_id      = azurerm_virtual_wan.my_vwan.id
  address_prefix      = "10.0.1.0/24"
}

resource "azurerm_vpn_gateway" "my_gateway" {
  name                = "my-vpng"
  location            = azurerm_resource_group.my_rg.location
  resource_group_name = azurerm_resource_group.my_rg.name
  virtual_hub_id      = azurerm_virtual_hub.my_hub.id
}
