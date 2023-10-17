provider "aws" {
  region = var.aws_region
}

provider "azurerm" {
  features {}
}

module "eks" {
  source = "terraform-aws-modules/eks/aws"

  cluster_name        = var.eks_cluster_name
  cluster_version     = var.eks_cluster_version
  subnets             = var.eks_subnets
  vpc_id              = var.eks_vpc_id

  worker_groups = {
    eks_nodes = {
      desired_capacity = var.eks_desired_capacity
      max_capacity     = var.eks_max_capacity
      min_capacity     = var.eks_min_capacity
      instance_type    = var.eks_instance_type
      docker_image     = var.eks_docker_image  # Add image details to pull from Docker registry
    }
  }
}

module "aks" {
  source = "terraform-azurerm-aks/azurerm"

  resource_group_name = var.aks_resource_group
  cluster_name        = var.aks_cluster_name
  location            = var.aks_location
  dns_prefix          = var.aks_dns_prefix

  node_pools = var.aks_node_pools
}

output "eks_cluster_id" {
  value = module.eks.cluster_id
}

output "aks_cluster_id" {
  value = module.aks.cluster_id
}
