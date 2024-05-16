output "storage_account_id" {
  description = "The Storage Account Id created by Azure"
  value       = azurerm_storage_account.storage_account.id
}

output "sa_primary_access_key" {
  description = "Primary Access Key from storage account created by Azure"
  value       = azurerm_storage_account.storage_account.primary_access_key
  sensitive   = true
}