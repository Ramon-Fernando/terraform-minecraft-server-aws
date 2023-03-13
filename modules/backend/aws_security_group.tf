resource "aws_security_group" "ec2" {
  name_prefix = format("%s_sg_ec2_", local.prefix_name)
  vpc_id      = var.vpc_output_id

  dynamic "ingress" {
    for_each = local.security_ec2_rules_ingress
    content {
      description     = ingress.value.description
      from_port       = ingress.value.from_port
      to_port         = ingress.value.to_port
      protocol        = ingress.value.protocol
      cidr_blocks     = ingress.value.cidr_blocks
    }
  }
  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


  tags = merge(
    local.common_tags,
    {
      Name = format("%s_sg_ec2", local.prefix_name)
    },
  )
}