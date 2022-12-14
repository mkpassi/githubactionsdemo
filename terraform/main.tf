provider "azurerm" {
  features {}
}

variable "rg_prefix" {
  default = "rg"
}

variable "location" {
  default = "eastus"
}


resource "random_pet" "rg_name" {
  prefix = var.rg_prefix
}

resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = random_pet.rg_name.id
}

output "resource_group_location" {
  value = azurerm_resource_group.rg.name
}