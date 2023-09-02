#settup terraform state storage within azure. 

terraform {
  backend "azurerm" {
    storage_account_name = "assignment1312"
    container_name       = "settelmint-assignment"
    key                  = "tfstate"
    resource_group_name  = "TFSTATE"
    subscription_id      = "a0bb738b-7d5a-48ae-87db-4aa0c520444b"
  }
}

# resource group to contain all the resources of this assignment
resource "azurerm_resource_group" "example" {
  name     = "settelmint"
  location = var.azure_region
  tags     = var.resource_tags
}

#acr to push docker images

resource "azurerm_container_registry" "acr" {
  name                = "settelmintacr"
  resource_group_name = azurerm_resource_group.example.name
  location            = var.azure_region
  sku                 = "Basic"
  tags     = var.resource_tags
}
