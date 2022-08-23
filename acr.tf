provider "azurerm" {
  features {}
}
resource "azurerm_container_registry" "acr" {
  name                = "containerRegistry1"
  resource_group_name = "DEV-TF-RG"
  location            = "eastus"
  sku                 = "Standard"
  admin_enabled       = false
  georeplications {
    location                = "East US"
    zone_redundancy_enabled = true
    tags                    = {}
  }
  georeplications {
    location                = "westeurope"
    zone_redundancy_enabled = true
    tags                    = {}
  }
}
