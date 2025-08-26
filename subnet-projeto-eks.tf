resource "aws_subnet" "vpc_projeto_eks_subnet_private" {
  vpc_id     = aws_vpc.vpc_projeto_eks.id
  cidr_block = "10.10.1.0/24"

  tags = {
    Name      = "Vpc_Projeto_Eks_Subnet_Priv"
    Projeto   = "EKS"
    Terraform = "True"
  }
}

resource "aws_subnet" "vpc_projeto_eks_subnet_public" {
  vpc_id                  = aws_vpc.vpc_projeto_eks.id
  cidr_block              = "10.10.2.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name      = "Vpc_Projeto_Eks_Subnet_Pub"
    Projeto   = "EKS"
    Terraform = "True"
  }
}