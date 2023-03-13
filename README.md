![banner](https://i.imgur.com/U5FX04H.png)
# Template Terraform para provisionar um servidor de Minecraft na AWS
![license](https://img.shields.io/github/license/Ramon-Fernando/terraform-minecraft-server-aws) ![Badge em Desenvolvimento](http://img.shields.io/static/v1?label=status&message=EM%20DESENVOLVIMENTO&color=GREEN)

## Introdução
Essa é uma versão automatizada e gerenciada pelo Terraform do "[Projeto: hospedando um servidor de Minecraft semi-automatizado na Amazon Web Services (AWS)](https://github.com/Ramon-Fernando/minecraft-server-aws)"

## Tecnologias utilizadas
* ``Amazon AWS``
* ``AWS CLI``
* ``Terraform``

## Instalação
Certifique-se de que tenha instalado o AWS CLI e o Terraform. Além disso, não se esqueça de utilizar o comando "aws configure" para se autenticar com suas credenciais.

Após essas etapas, basta iniciar o git bash ou o prompt de comando na pasta do projeto e utilizar os seguintes comandos:
```bash
terraform init
terraform plan
terraform apply
```
O nome para o bucket do S3 será requerido, não esqueça que precisar ser um nome único globalmente.

## Observações
Como o projeto ainda está desenvolvimento e o código passando por melhorias, não está contemplado nesse template:
* A criação do serviço para o minecraft (systemctl) para iniciar automaticamente o servidor quando a máquina for iniciada;
* A criação do CloudWatch Alarm para identificar a presença de 0 jogadores no servidor;
* O uso do Amazon EventBridge para desligar o servidor quando não há jogadores.

Caso opte por essas funções, apenas siga esses três passos restantes no tutorial disponível [aqui](https://github.com/Ramon-Fernando/minecraft-server-aws)

## Licença
Esse projeto é [MIT Licensed](https://github.com/Ramon-Fernando/terraform-minecraft-server-aws/blob/main/LICENSE).
