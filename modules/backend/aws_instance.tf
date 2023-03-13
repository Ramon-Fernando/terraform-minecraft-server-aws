resource "aws_instance" "minecraft-instance" {
    ami = var.ami
    instance_type = var.instance_type
    availability_zone = local.availability_zone
    vpc_security_group_ids = [aws_security_group.ec2.id]
    subnet_id = var.subnet_id
    iam_instance_profile = aws_iam_instance_profile.ec2_profile.name
    user_data = file("${path.module}/user-data/bootstrap.sh")
    associate_public_ip_address = true
}