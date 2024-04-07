resource_group_name                = "example-resources"
location                           = "East US"
virtual_network_name               = "example-vnet"
virtual_network_address_space      = ["10.0.0.0/16"]
subnet_name                        = "example-subnet"
subnet_address_prefixes            = ["10.0.1.0/24"]
express_route_circuit_name         = "example-express-route-circuit"
express_route_circuit_sku          = "Standard"
express_route_circuit_bandwidth_in_gbps = 10
service_provider_name              = "Equinix"
peering_location                   = "Silicon Valley"
express_route_id                   = "YOUR_EXPRESS_ROUTE_ID"
tags = {
  environment = "Production"
}
