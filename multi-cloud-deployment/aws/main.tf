module "eks" {
  source = "terraform-aws-modules/eks/aws"

  cluster_name        = var.eks_cluster_name
  cluster_version     = var.eks_cluster_version
  subnets             = var.eks_subnets
  vpc_id              = var.eks_vpc_id

  worker_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_type    = var.eks_instance_type
    }
  }
}

output "eks_cluster_id" {
  value = module.eks.cluster_id
}
