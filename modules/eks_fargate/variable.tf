variable "stage" { }

variable "subnet_ids" {
  type = list(string)
  default = []
}

variable "eks_name" { }
variable "cluster_version" { default = "1.17" }
variable "launch_template_enable" { default = true}
variable "account" { }
