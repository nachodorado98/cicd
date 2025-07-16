output "static_website_url" {
  value       = azurerm_storage_account.storage_account.primary_web_endpoint
  description = "URL pública del sitio web estático"
}

output "contenedor1_url" {
  value       = "https://${azurerm_storage_account.storage_account.name}.blob.core.windows.net/${azurerm_storage_container.contenedor1.name}"
  description = "URL pública del contenedor1"
}

output "contenedor2_url" {
  value       = "https://${azurerm_storage_account.storage_account.name}.blob.core.windows.net/${azurerm_storage_container.contenedor2.name}"
  description = "URL pública del contenedor2"
}