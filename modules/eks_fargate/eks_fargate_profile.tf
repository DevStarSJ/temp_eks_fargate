resource "aws_eks_fargate_profile" "test_server" {
  cluster_name           = aws_eks_cluster.genoplan.name
  fargate_profile_name   = "test_server"
  pod_execution_role_arn = aws_iam_role.eksfargate.arn
  subnet_ids             = var.subnet_ids

  selector {
    namespace = "default"
  }
  selector {
    namespace = "kube-system"
  }
}
