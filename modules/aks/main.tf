provider "azurerm" {
    alias = "deployment_provider"
}

#kubernetes service
resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.azure_region
  resource_group_name = var.resource_group_name
  dns_prefix          = "settelmint-${var.aks_name}"
  kubernetes_version  = var.aks_version
  sku_tier            = var.aks_tier
  azure_policy_enabled = false

  default_node_pool {
    name       = var.pool_name
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  key_vault_secrets_provider {
    secret_rotation_enabled = true
  }
  
  identity {
    type = "SystemAssigned"
  }

  tags = var.resource_tags

}
