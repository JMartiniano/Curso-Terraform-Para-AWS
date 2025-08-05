resource "aws_vpc" "vpc-projeto-eks" {
  cidr_block       = "10.10.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Vpc-Projeto-EKS"
    Projeto = "EKS"
    Terraform = "True"
  }
}