resource "aws_s3_bucket" "imagebuilder" {
  # tfsec:ignore:AWS002
  # tfsec:ignore:AWS077
  # checkov:skip=CKV_AWS_144: Not appropriate
  # checkov:skip=CKV_AWS_18: Not appropriate
  # checkov:skip=CKV_AWS_21: Not appropriate
  acl = "private"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = var.kms_key.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }
  bucket_prefix = "imagebuilder"
  tags          = var.common_tags
}
