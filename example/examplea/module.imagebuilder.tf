module "imagebuilder" {
  source             = "../../"
  common_tags        = var.common_tags
  kms_key            = aws_kms_key.imagebuilder
  subnet_id          = var.subnet_id
  security_group_ids = var.security_group_ids
  component = yamlencode({
    phases = [{
      name = "build"
      steps = [{
        action = "ExecuteBash"
        inputs = {
          commands = ["echo 'hello world'"]
        }
        name      = "example"
        onFailure = "Continue"
      }]
    }]
    schemaVersion = 1.0
  })
}
