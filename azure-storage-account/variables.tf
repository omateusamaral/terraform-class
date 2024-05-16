variable "location_zone" {
  type        = string
  nullable    = false
  description = "This variable says where zone from azure we want to deploy"
  default     = "Brazil South"
}

variable "account_tier" {
  description = "Tier from Azure storage account"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Type of account replication of Storage Account"
  type        = string
  default     = "LRS"
}

variable "resource_group_name" {
  description = "The name of resource group on Azure"
  type        = string
  default     = "resource-group-terraform"
}

variable "storage_account_name" {
  description = "The name of storage account on Azure"
  type        = string
  default     = "1mateusamaralterraform"
}
variable "storage_container_name" {
  description = "The name of container on Azure"
  type        = string
  default     = "container-terraform"
}