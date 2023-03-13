locals{
   
    subnet_public = {
        cidr_block = "${var.network_prefix}.0.1.0/24"
        availability_zone = "${var.region}a"
    }

     common_tags = {
        Server = var.server
        Environment = var.environment
    }

}