module "s3_bucket" {
    source          = "../modules/s3_bucket"
    identifier      = var.identifier
    force_destroy   = var.s3_bucket_config.force_destroy
    acl             = var.s3_bucket_config.acl
}