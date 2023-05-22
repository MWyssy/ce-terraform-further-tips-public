
module "new_instance" {
  source = "./module"

  name   = "first_module_created_instance"
  subnet = "subnet-05e708d5fdd66fc4f"

  key_name = "first_module_created_key"
  sg_name  = "first_module_created_sg"

  public_ip = true

}
