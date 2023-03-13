resource "aws_vpc" "my_vpc"{
    cidr_block = "${var.network_prefix}.0.0.0/16"
}