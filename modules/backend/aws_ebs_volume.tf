resource "aws_ebs_volume" "server_volume" {
  availability_zone = local.availability_zone
  size              = 8
  tags = local.common_tags
}