resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage-account-name
  resource_group_name      = azurerm_resource_group.rg.name
  account_tier             = "Standard"
  location                 = var.location
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = true

  static_website {
    index_document = var.index_document
  }
}

resource "azurerm_storage_blob" "ejemplo" {
  name                   = var.index_document
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  source_content         = var.source_content
}