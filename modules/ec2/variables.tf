variable "name" {
  description = "Name of the instance"
  type        = string
}

variable "ami" {
  description = "Amazon Machine Image for the new instance"
  type        = string
}

variable "instance_type" {
  description = "Type of instance to create"
  type        = string
}

variable "monitoring" {
  description = "Set monitoring, true or false"
  type        = bool
  default     = true
}

variable "subnet" {
  description = "The subnet to add the instance to"
  type        = string
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
