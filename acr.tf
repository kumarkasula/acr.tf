provider "azurerm" {
  features {}
}
resource "azurerm_container_registry" "acr" {
  name                = "testacr"
  resource_group_name = "DEV-TF-RG"
  location            = "eastus"
  sku                 = "Premium"
  admin_enabled       = false
  georeplications {
    location                = "westus"
    zone_redundancy_enabled = true
    tags                    = {}
  }
  georeplications {
    location                = "westeurope"
    zone_redundancy_enabled = true
    tags                    = {}
  }
}
