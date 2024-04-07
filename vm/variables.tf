/*

variable "resource_group_name" {
  description = "The name of the Azure resource group."
  type        = string
  default     = "terraform"
}

variable "virtual_network_name" {
  description = "The name of the Azure virtual network."
  type        = string
  default     = "terraform_vnet"
}

variable "subnet_name" {
  description = "The name of the Azure subnet."
  type        = string
  default     = "terraform_snet"
}

variable "subnet_address_prefix" {
  description = "The address prefix for the Azure subnet."
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

variable "network_interface_name" {
  description = "The name of the Azure network interface."
  type        = string
  default     = "terraform_nic"
}

variable "vm_name" {
  description = "The name of the Azure virtual machine."
  type        = string
  default     = "terraform_vm"
}

variable "vm_size" {
  description = "The size of the Azure virtual machine."
  type        = string
  default     = "Standard_F2"
}

variable "admin_username" {
  description = "The username for accessing the virtual machine."
  type        = string
  default     = "adminuser"
}

variable "computer_name" {
  description = "The name of the virtual machine."
  type        = string
  default     = "my-vm"
}

*/