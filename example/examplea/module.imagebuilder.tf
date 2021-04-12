module "imagebuilder" {
  source      = "../../"
  common_tags = var.common_tags
  kms_key     = aws_kms_key.imagebuilder
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
