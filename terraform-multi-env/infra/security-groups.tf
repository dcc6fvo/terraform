resource "aws_security_group" "acesso_geral" {
  name = "acesso_geral"
  description =  "acesso_geral"

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "libera tudo entrada para qualquer maquina externa"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "libera tudo saida para qualquer maquina externa"
    from_port = 0
    to_port = 0
    protocol = "-1"

  }

  tags = {
    Name = "acesso_geral"
  }
}
