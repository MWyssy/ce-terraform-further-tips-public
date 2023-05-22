variable "bucket-name" {
  description = "Name of the s3 bucket"
  type        = string
  default     = "terraform_bucket"
}

variable "bucket-description" {
  description = "Description of the s3 bucket"
  type        = string
  default     = "terraform_bucket"
}

variable "create-bucket" {
  description = "Indicates whether to create an s3 bucket, or not."
  type        = bool
  default     = false
}
