locals {
#Variáveis do module network
  server = "minecraft"

  environment = "dev"

  region = "sa-east-1"

  network_prefix = "11"
#Variáveis do module backend
  ami = data.aws_ami.amazon_linux2.id
  
  instance_type ="m6g.medium"












}