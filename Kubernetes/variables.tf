variable "resource_group_name" {
  description = "The name of the resource group in which to create the AKS cluster."
}

variable "location" {
  description = "The location of the AKS cluster."
}

variable "cluster_name" {
  description = "The name of the AKS cluster."
}

variable "dns_prefix" {
  description = "The DNS prefix specified when creating the AKS cluster."
}

variable "node_count" {
  description = "The number of nodes in the default node pool."
}

variable "vm_size" {
  description = "The size of the Virtual Machine."
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
}
