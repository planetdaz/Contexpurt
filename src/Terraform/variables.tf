variable "environment" {
  type        = string
  description = "The environment for which this deployment is created (e.g., dev, prod)."
}

resource "random_string" "random" {
  length  = 6
  special = false
  upper   = false
}

variable "key_vault_name" {
  type        = string
  description = "Name of the Key Vault."
  default     = "mykeyvault-${var.environment}-${random_string.random.result}"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where the Key Vault is created."
  default     = "myresourcegroup-${var.environment}-${random_string.random.result}"
}

variable "location" {
  type        = string
  description = "The location where the Key Vault is created."
  default     = "southcentralus"
}