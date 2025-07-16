resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage-account-name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = true

  static_website {
    index_document     = var.index_document
    error_404_document = "404.html"
  }

  tags = {
    environment = "DEV"
    owner       = "Nacho"
  }
}

resource "azurerm_storage_container" "contenedor1" {
  name                  = "contenedor1"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "blob"
}

resource "azurerm_storage_container" "contenedor2" {
  name                  = "contenedor2"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "blob"
}

resource "azurerm_storage_blob" "ejemplo" {
  name                   = var.index_document
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  source_content         = var.source_content
}

resource "azurerm_storage_data_lake_gen2_path" "carpeta1" {
  storage_account_id = azurerm_storage_account.storage_account.id
  filesystem_name    = azurerm_storage_container.contenedor1.name
  path              = "carpeta1"
  resource          = "directory"
}

resource "azurerm_storage_data_lake_gen2_path" "carpeta2" {
  storage_account_id = azurerm_storage_account.storage_account.id
  filesystem_name    = azurerm_storage_container.contenedor1.name
  path              = "carpeta2"
  resource          = "directory"
}