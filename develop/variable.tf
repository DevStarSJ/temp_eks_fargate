########################
## Account

variable "account" { }
variable "subnet_name" { }
variable "vpc_name" { }
variable "stage" { }
variable "subnet_1_cidr" { }
variable "subnet_2_cidr" { }
variable "subnet_3_cidr" { }


########################
## EKS
########################

variable "eks_name" { }
variable "eks_worker_instance_type" { }
variable "eks_worker_desired_capacity" { }
variable "eks_worker_max_size" { }
variable "eks_worker_min_size" { }
variable "eks_worker_health_check_grace_period" { }

variable "eks_worker_ebs_volume_type" { }
variable "eks_worker_ebs_volume_size" { }
variable "eks_worker_key_name" { }

# variable "eks_poly_service_service_load_balancer_dns_name" { }
# variable "eks_poly_statistics_service_load_balancer_dns_name" { }
# variable "eks_poly_batch_service_load_balancer_dns_name" { }
