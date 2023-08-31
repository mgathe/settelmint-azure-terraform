provider "azurerm" {
  version         = "~>3.56.0"
  subscription_id = "a0bb738b-7d5a-48ae-87db-4aa0c520444b"
  #This is free trial subscription.I am using this only for creating resources for assignment
}

provider "azuread" {
  version = "~>0.11"
}