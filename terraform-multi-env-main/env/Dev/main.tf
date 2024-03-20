module "aws-dev" {
  source = "../../infra"
  instancia = "t2.micro"
  regiao_aws = "us-west-2"
  chave = "aws-terraform-multi-env-dev"
}

output "IP" {
  value = module.aws-dev.IP_publico
}