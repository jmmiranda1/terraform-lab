# Configure the Azure provider
provider "azurerm" {
  features {}
  backend "azurerm" {
    resource_group_name   = "<RESOURCE_GROUP_NAME>"
    storage_account_name  = "<STORAGE_ACCOUNT_NAME>"
    container_name        = "<CONTAINER_NAME>"
    key                   = "terraform.tfstate"
  }
}

# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "test"
  location = "West US"
}