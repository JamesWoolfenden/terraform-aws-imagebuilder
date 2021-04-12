resource "aws_s3_bucket" "imagebuilder" {
  # checkov:skip=CKV_AWS_145: todo
  # checkov:skip=CKV_AWS_144: todo
  # checkov:skip=CKV_AWS_19:
  # checkov:skip=CKV_AWS_18:
  # checkov:skip=CKV_AWS_52:
  # checkov:skip=CKV_AWS_21:
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
