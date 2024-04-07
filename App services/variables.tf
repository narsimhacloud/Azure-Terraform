variable "name" {
  description = "Name of the resources"
  type        = string
}

variable "location" {
  description = "Azure region where the resources will be created"
  type        = string
}

variable "account_tier" {
  description = "Tier of the storage account (Standard or Premium)"
  type        = string
}

variable "account_replication_type" {
  description = "Replication type of the storage account (LRS, GRS, RAGRS, ZRS)"
  type        = string
}

variable "azurerm_app_service_plan_name" {
  description = "Name of the App Service Plan"
  type        = string
}

variable "app_service_plan_resource_group_name" {
  description = "Name of the resource group where the App Service Plan will be created"
  type        = string
}

variable "app_service_plan_tier" {
  description = "Tier of the App Service Plan (e.g., Free, Basic, Standard, Premium)"
  type        = string
}

variable "app_service_plan_size" {
  description = "Size of the App Service Plan (e.g., F1, B1, S1, P1v2)"
  type        = string
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "storage_account_resource_group_name" {
  description = "Name of the resource group where the storage account will be created"
  type        = string
}

variable "storage_account_access_key" {
  description = "Access key of the storage account"
  type        = string
}

variable "function_app_name" {
  description = "Name of the Function App"
  type        = string
}

variable "function_app_resource_group_name" {
  description = "Name of the resource group where the Function App will be created"
  type        = string
}
