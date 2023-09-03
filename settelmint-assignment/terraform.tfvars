azure_region = "eastus2"

resource_tags = {
  "Customer"         = "Internal"
  "Product_group"    = "settelmint"
  "Environment_Type" = "dev"
  "Terraform"        = "True"
}

##################################
######### AKS ####################
##################################

aks_name    = "settelmint-aks"
aks_version = "1.26.3"
aks_tier    = "Free"
pool_name   = "node"
vm_size     = "Standard_D2_v2"
node_count  = 2