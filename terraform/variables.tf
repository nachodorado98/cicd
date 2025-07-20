variable "name" {
  description = "The name of the resource group"
}

variable "location" {
  description = "The Azure Region in which all resources groups should be created."
}

variable "storage-account-name" {
  description = "The name of the storage account"
}

variable "index_document" {
  description = "The index document of the static website"
}

variable "source_content" {
  description = "This is the source content for the static website"
}

variable "web-app-plan-name" {
  description = "The name of the web app plan"
}

variable "web-app-name" {
  description = "The name of the web app"
}

variable "container_image" {
  description = "Image and tag of the container"
}

variable "log-analytics-name" {
  description = "The name of the log analytics"
}

variable "web-container-name" {
  description = "The name of the web container"
}