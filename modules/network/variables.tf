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

variable "network_prefix" {
    type = string
}
