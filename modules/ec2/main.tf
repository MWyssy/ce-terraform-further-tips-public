resource "aws_instance" "default_ec2" {

  ami                         = var.ami
  instance_type               = var.instance_type
  monitoring                  = var.monitoring
  subnet_id                   = var.subnet
  associate_public_ip_address = var.public_ip
  security_groups             = [aws_security_group.default_securitygroup.id]
  key_name                    = aws_key_pair.default_keypair.id
  tags = {
    Name = var.name
  }
}

resource "aws_key_pair" "default_keypair" {
  key_name   = var.key_name
  public_key = file(var.public_key)
}

resource "aws_security_group" "default_securitygroup" {
  name        = var.sg_name
  description = "Allows personal SSH access"
  vpc_id      = var.vpc

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${data.external.my_ip.result.MY_IP}/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
