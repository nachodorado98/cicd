variable "location" {
  description = "The Azure Region in which all resources groups should be created."
  default     = "northeurope"
}

variable "name" {
  description = "The name of the resource group"
  default     = "Grupo_Nacho"
}

variable "storage-account-name" {
  description = "The name of the storage account"
  default     = "datalakenacho2"
}

variable "index_document" {
  description = "The index document of the static website"
  default     = "index.html"
}

variable "source_content" {
  description = "This is the source content for the static website"
  default     = "<h1>Hey Friends, this website was deployed with Terraform on Azure storage and is a bit advanced.</h1>"
}