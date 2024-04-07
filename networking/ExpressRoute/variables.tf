variable "resource_group_name" {
  description = "The name of the resource group where the resources will be created."
}

variable "location" {
  description = "The Azure region where the resources will be deployed."
}

variable "virtual_network_name" {
  description = "The name of the virtual network."
}

variable "virtual_network_address_space" {
  description = "The address space for the virtual network."
}

variable "subnet_name" {
  description = "The name of the subnet."
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet."
}

variable "express_route_circuit_name" {
  description = "The name of the ExpressRoute circuit."
}

variable "express_route_circuit_sku" {
  description = "The SKU (tier) of the ExpressRoute circuit."
}

variable "express_route_circuit_bandwidth_in_gbps" {
  description = "The bandwidth in Gbps for the ExpressRoute circuit."
}

variable "service_provider_name" {
  description = "The name of the ExpressRoute service provider."
}

variable "peering_location" {
  description = "The peering location for the ExpressRoute circuit."
}

variable "express_route_id" {
  description = "The ID provided by the service provider for authorization."
}

variable "tags" {
  description = "A map of tags to assign to the ExpressRoute circuit."
  type        = map(string)
}
