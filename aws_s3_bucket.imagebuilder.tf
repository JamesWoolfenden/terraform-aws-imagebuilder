resource "aws_s3_bucket" "imagebuilder" {
  # tfsec:ignore:AWS002
  # tfsec:ignore:AWS077
  # checkov:skip=CKV_AWS_144: Not appropriate
  # checkov:skip=CKV_AWS_18: Not appropriate
  # checkov:skip=CKV_AWS_21: Not appropriate
  # checkov:skip=CKV_AWS_145: v4 legacy
  # checkov:skip=CKV_AWS_144: v4 legacy
  # checkov:skip=CKV_AWS_19: v4 legacy
  # checkov:skip=CKV2_AWS_41: Not appropriate
  # checkov:skip=CKV2_AWS_37: Not appropriate
  bucket_prefix = "imagebuilder"
  tags          = var.common_tags
}

resource "aws_s3_bucket_server_side_encryption_configuration" "imagebuilder" {
  bucket = aws_s3_bucket.imagebuilder.bucket
  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = var.kms_key.id
      sse_algorithm     = "aws:kms"
    }
  }
}

resource "aws_s3_bucket_acl" "imagebuilder" {
  bucket = aws_s3_bucket.imagebuilder.bucket
  acl    = "private"
}
