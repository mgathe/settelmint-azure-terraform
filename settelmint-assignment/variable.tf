#############################################
# Global
#############################################
variable "azure_region" {
  description = "The azure region where resources should be created"
}

variable "resource_tags" {
  type        = map(string)
  description = "Tags to be included on the created resource(s)"
}

##############################################
## Azure Kubernetes
##############################################

variable "aks_name" {
  description = "Provide aks name"
}

variable "aks_version" {
  description = "provide aks version"
}

variable "aks_tier" {
  description = "The SKU Tier that should be used for this Kubernetes Cluster. Possible values are Free, and Standard"
}

variable "pool_name" {
  description = "Provide node pool name"
}

variable "vm_size" {
  description = "Select suitable vm size"
}

variable "node_count" {
  description = "select the number of nodes"
}