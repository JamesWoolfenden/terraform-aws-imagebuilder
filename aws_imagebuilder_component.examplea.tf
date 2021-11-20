resource "aws_imagebuilder_component" "examplea" {
  data       = var.component
  name       = var.component_name
  platform   = var.platform
  version    = var.component_version
  kms_key_id = var.kms_key.arn
  //supported_os_versions = ["Linux"]
  tags = var.common_tags
}
