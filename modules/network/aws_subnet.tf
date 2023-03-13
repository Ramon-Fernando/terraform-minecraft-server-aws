resource "aws_subnet" "public" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = local.subnet_public.cidr_block
    availability_zone = local.subnet_public.availability_zone

    tags = merge(
        local.common_tags,
        {
            Name = format("%s_public_subnet", var.server)
        },
    )
}