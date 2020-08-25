
resource "aws_security_group" "eks_cluster" {
    name        = "eks_cluster"
    description = "Cluster communication with worker nodes"
    vpc_id      = data.aws_vpc.selected.id

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 443
        to_port     = 443
        protocol    = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Allow workstation to communicate with the cluster API Server"  
    }

    tags = { Name = "EKS Cluster" }
}

resource "aws_security_group" "eks_worker" {
    name        = "eks_worker"
    description = "Security group for all nodes in the cluster"
    vpc_id      = data.aws_vpc.selected.id

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = { Name = "EKS Node" }
}
