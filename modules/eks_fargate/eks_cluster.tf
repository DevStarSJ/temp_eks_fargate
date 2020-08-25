resource "aws_eks_cluster" "genoplan" {
  name            = var.eks_name
  role_arn        = aws_iam_role.cluster.arn
  version         = var.cluster_version

  vpc_config {
    security_group_ids = [ aws_security_group.eks_cluster.id ]
    subnet_ids         = var.subnet_ids
  }

  depends_on = [
    aws_iam_role_policy_attachment.cluster_AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.cluster_AmazonEKSServicePolicy,
  ]
}
