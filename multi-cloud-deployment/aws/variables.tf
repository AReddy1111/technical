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
