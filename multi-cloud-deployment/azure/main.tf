module "aks" {
  source = "terraform-azurerm-aks/azurerm"

  resource_group_name = var.aks_resource_group
  cluster_name        = var.aks_cluster_name
  location            = var.aks_location
  dns_prefix          = var.aks_dns_prefix

  node_pools = var.aks_node_pools
}

output "aks_cluster_id" {
  value = module.aks.cluster_id
}
