terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
  alias = "sa-east-1"
  profile = "default"
}

provider "aws" {
  region = "us-east-1"
  alias = "us-east-1"
}

resource "aws_instance" "dev-pub-1" {
    ami = var.amis["sa-east-1"]
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    associate_public_ip_address = true
    vpc_security_group_ids = [aws_security_group.acesso_ssh_icmp_publico.id]

    tags = {
        Name = "dev-pub-1"
    }
}

resource "aws_instance" "dev-pub-2" {
    provider = aws.us-east-1
    ami = var.amis["us-east-1"]
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    associate_public_ip_address = true
    vpc_security_group_ids = [aws_security_group.acesso_ssh_icmp_publico-us.id]

    tags = {
        Name = "dev-pub-2"
    }
}

resource "aws_instance" "dev-priv" {
    count = 4
    ami = var.amis["sa-east-1"]
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    associate_public_ip_address = false
    vpc_security_group_ids = [aws_security_group.acesso_ssh_icmp_privado.id]

    tags = {
        Name = "dev-priv-${count.index}"
    }
}