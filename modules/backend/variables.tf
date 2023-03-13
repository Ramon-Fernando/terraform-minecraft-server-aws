variable "ami" {
    description = "Id da AMI a ser utilizada"
    type = string
}

variable "instance_type" {
  description = "Tipo da instância"
  type        = string
}

variable "subnet_id" {
  description = "id da subnet"
  type        = string
}

variable "s3Name" {
  description = "Nome do bucket S3"
  type        = string
}

variable "region" {
    description = "Id da região onde os recursos serão provisionados"
    type = string
}

variable "environment" {
  description = "Sigla do ambiente correspondente a implantação"
  type        = string
}

variable "server" {
  description = "Nome do tipo de servidor"
  type        = string
}

variable "vpc_output_id" {
  description = "Nome do tipo de servidor"
  type        = string
}