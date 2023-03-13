locals{
prefix_name    = format("%s", var.server)

availability_zone = "${var.region}a"

# Regras do security group para o servidor de minecraft
  sg_ec2_rules_ingress = {
    1 = { description = "Conexao SSH", protocol = "tcp", from_port = "22", to_port = "22", cidr_blocks = ["0.0.0.0/0"] }
    2 = { description = "Porta minecraft", protocol = "tcp", from_port = "25565", to_port = "25565", cidr_blocks = ["0.0.0.0/0"] }
  }

  security_ec2_rules_ingress = [for rule in local.sg_ec2_rules_ingress : {
    from_port       = lookup(rule, "from_port", null)
    description     = lookup(rule, "description", null)
    protocol        = lookup(rule, "protocol", null)
    to_port         = lookup(rule, "to_port", null)
    cidr_blocks     = lookup(rule, "cidr_blocks", null)
    }
  ]

  common_tags = {
        Server = var.server
        Environment = var.environment
    }
}