# Configure the Azure provider
provider "azurerm" {
  features {}
  backend "azurerm" {
    resource_group_name   = "terraform-backend"
    storage_account_name  = "tflabstorage"
    container_name        = "tfbackend"
    key                   = "terraform.tfstate"
  }
}

# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "test"
  location = "West US"

  tags = {
    Environment = "test"
  }
}