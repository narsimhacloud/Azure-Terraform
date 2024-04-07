variable "location" {
  description = "The location/region for Azure resources."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Azure resource group."
  type        = string
  default     = "terraform"
}
variable "storage_account_id" {
  description = "storage account id"
  type        = string
}