output "eks_cluster_id" {
  value = module.eks.cluster_id
}

output "aks_cluster_id" {
  value = module.aks.cluster_id
}
