#-------------------------------------------------------------------------
# REQUIRED PARAMETERS
#-------------------------------------------------------------------------

variable "resource_group_name" {
    description = "The name of resource group"
}

variable "aks_name" {
    description = "Provide aks name"
}

variable "azure_region" {
    description = "region of aks"
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

variable "resource_tags" {
  type        = map(string)
  description = "Tags to be included on the created resource(s)"
}
