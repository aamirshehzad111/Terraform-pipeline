locals {
  default_tags = {
    Environment = terraform.workspace
    Name        = "${var.identifier}-${terraform.workspace}"
  }
  tags = merge(local.default_tags, var.tags)
}

resource "aws_s3_bucket" "bucket" {
  force_destroy = var.force_destroy
  bucket        = "${var.identifier}-${terraform.workspace}"
  acl           = var.acl
  tags = local.tags
}