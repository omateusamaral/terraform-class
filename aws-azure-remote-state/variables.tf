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
