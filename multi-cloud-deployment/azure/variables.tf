variable "aks_resource_group" {
  description = "Name of the AKS resource group."
  default     = "my-aks-resource-group"
}

variable "aks_cluster_name" {
  description = "Name of the AKS cluster."
  default     = "my-aks-cluster"
}

variable "aks_location" {
  description = "Location for the AKS cluster."
  default     = "East US"
}

variable "aks_dns_prefix" {
  description = "DNS prefix for the AKS cluster."
  default     = "myaks"
}

variable "aks_node_pools" {
  description = "List of node pools for the AKS cluster."
  type        = list(map(string))
  default     = [{
    name       = "standardnodepool"
    node_count = "3"
    vm_size    = "Standard_DS2_v2"
  }]
}
