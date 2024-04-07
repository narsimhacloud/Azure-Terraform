provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "my_resource_group" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "my_virtual_network" {
  name                = var.virtual_network_name
  address_space       = var.virtual_network_address_space
  location            = azurerm_resource_group.my_resource_group.location
  resource_group_name = azurerm_resource_group.my_resource_group.name
}

resource "azurerm_subnet" "service_subnet" {
  name                 = "service-subnet"
  resource_group_name  = azurerm_resource_group.my_resource_group.name
  virtual_network_name = azurerm_virtual_network.my_virtual_network.name
  address_prefixes     = ["10.0.1.0/24"]
  enforce_private_link_service_network_policies = true
}

resource "azurerm_subnet" "endpoint_subnet" {
  name                 = "endpoint-subnet"
  resource_group_name  = azurerm_resource_group.my_resource_group.name
  virtual_network_name = azurerm_virtual_network.my_virtual_network.name
  address_prefixes     = ["10.0.2.0/24"]
  enforce_private_link_endpoint_network_policies = true
}

resource "azurerm_public_ip" "my_public_ip" {
  name                = "my-public-ip"
  sku                 = "Standard"
  location            = azurerm_resource_group.my_resource_group.location
  resource_group_name = azurerm_resource_group.my_resource_group.name
  allocation_method   = "Static"
}

resource "azurerm_lb" "my_load_balancer" {
  name                = "my-load-balancer"
  sku                 = "Standard"
  location            = azurerm_resource_group.my_resource_group.location
  resource_group_name = azurerm_resource_group.my_resource_group.name

  frontend_ip_configuration {
    name                 = azurerm_public_ip.my_public_ip.name
    public_ip_address_id = azurerm_public_ip.my_public_ip.id
  }
}

resource "azurerm_private_link_service" "my_private_link_service" {
  name                = "my-private-link-service"
  location            = azurerm_resource_group.my_resource_group.location
  resource_group_name = azurerm_resource_group.my_resource_group.name

  nat_ip_configuration {
    name      = azurerm_public_ip.my_public_ip.name
    primary   = true
    subnet_id = azurerm_subnet.service_subnet.id
  }

  load_balancer_frontend_ip_configuration_ids = [
    azurerm_lb.my_load_balancer.frontend_ip_configuration[0].id,
  ]
}

resource "azurerm_private_endpoint" "my_private_endpoint" {
  name                = "my-private-endpoint"
  location            = azurerm_resource_group.my_resource_group.location
  resource_group_name = azurerm_resource_group.my_resource_group.name
  subnet_id           = azurerm_subnet.endpoint_subnet.id

  private_service_connection {
    name                           = "my-private-service-connection"
    private_connection_resource_id = azurerm_private_link_service.my_private_link_service.id
    is_manual_connection           = false
  }
}
