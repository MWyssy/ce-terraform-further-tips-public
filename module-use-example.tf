
module "new_instance" {
  source = "./modules/ec2"

  # ec2 Module vars
  name   = "first_module_created_instance"
  subnet = "subnet-05e708d5fdd66fc4f"

  key_name = "first_module_created_key"
  sg_name  = "first_module_created_sg"

  ami           = "ami-0a242269c4b530c5e"
  instance_type = "t2.micro"

  public_ip = true
}

