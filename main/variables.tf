variable "profile" {
  type         = string
  description = "name of aws profile"
}

variable "region" {
  type         = string
  description = "Aws region"
}

variable "identifier" {
  description = "The name of the security group"
  type        = string
}

variable "s3_bucket_config" {
  description = "The configuration for s3 module"
}