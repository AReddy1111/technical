variable "aws_region" {
  description = "AWS region for the EKS cluster."
  default     = "us-east-1"
}

variable "azure_region" {
  description = "Azure region for the AKS cluster."
  default     = "East US"
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster."
  default     = "my-eks-cluster"
}

variable "eks_cluster_version" {
  description = "Kubernetes version for the EKS cluster."
  default     = "1.21"
}

variable "eks_subnets" {
  description = "List of subnet IDs for the EKS cluster."
  type        = list(string)
  default     = ["subnet-abc12345", "subnet-def67890"]
}

variable "eks_vpc_id" {
  description = "VPC ID for the EKS cluster."
  default     = "vpc-xyz98765"
}

variable "eks_instance_type" {
  description = "Instance type for EKS worker nodes."
  default     = "t2.micro"
}

variable "eks_desired_capacity" {
  description = "Desired capacity for EKS worker nodes."
  default     = 2
}

variable "eks_max_capacity" {
  description = "Max capacity for EKS worker nodes."
  default     = 3
}

variable "eks_min_capacity" {
  description = "Min capacity for EKS worker nodes."
  default     = 1
}

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

# Variable for Docker image to be used by EKS worker nodes
variable "eks_docker_image" {
  description = "Docker image to be used by EKS worker nodes."
  default     = "my-docker-image:tag"
}
