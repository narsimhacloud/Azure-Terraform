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

variable "public_ip_name" {
  description = "The name of the public IP address."
}

variable "public_ip_allocation_method" {
  description = "The allocation method for the public IP address."
}

variable "public_ip_sku" {
  description = "The SKU for the public IP address."
}

variable "firewall_name" {
  description = "The name of the Azure Firewall."
}

variable "firewall_sku_name" {
  description = "The SKU name for the Azure Firewall."
}

variable "firewall_sku_tier" {
  description = "The SKU tier for the Azure Firewall."
}
