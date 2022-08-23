provider "azurerm" {
  features {}
}
resource "azurerm_container_registry" "acr" {
  name                = "testinggacr"
  resource_group_name = "DEV-TF-RG"
  location            = "eastus"
  sku                 = "Premium"
  admin_enabled       = false
}
