resource "aws_iam_role" "ec2_role" {
  name = format("%s-iam-role-ec2", local.prefix_name)

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
}