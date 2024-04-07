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
