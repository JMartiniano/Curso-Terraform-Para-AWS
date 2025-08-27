resource "aws_vpc" "vpc_projeto_eks" {
  cidr_block           = "10.10.0.0/16"
  instance_tenancy     = "default" # Default as EC2 usam DC compartilhado e Dedicated usa DC dedicados
  enable_dns_support   = true # default é true mas add por boa pratica
  enable_dns_hostnames = true # tem que ativar

  tags = {
    Name      = "Vpc-Projeto-EKS"
    Projeto   = "EKS"
    Terraform = "True"
  }
}