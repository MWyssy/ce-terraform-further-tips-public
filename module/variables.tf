variable "name" {
  description = "Name of the instance"
  type        = string
  default     = "default_ec2"
}

variable "ami" {
  description = "Amazon Machine Image for the new instance"
  type        = string
  default     = "ami-09744628bed84e434"
}

variable "instance_type" {
  description = "Type of instance to create"
  type        = string
  default     = "t2.micro"
}

variable "monitoring" {
  description = "Set monitoring, true or false"
  type        = bool
  default     = true
}

variable "subnet" {
  description = "The subnet to add the instance to"
  type        = string
  default     = "subnet-0926aeb3c0bc0597e"
}

variable "public_ip" {
  description = "Choose whether to associate a public IP address or not"
  type        = bool
  default     = false
}

variable "key_name" {
  description = "The name of the new security key"
  type        = string
  default     = "default_keypair"
}

variable "public_key" {
  description = "File location of your public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "sg_name" {
  description = "Name of the scurity group"
  type        = string
  default     = "default_securitygroup"
}

variable "vpc" {
  description = "ID of the default VPC"
  type        = string
  default     = "vpc-0810289a43394ca8f"
}
