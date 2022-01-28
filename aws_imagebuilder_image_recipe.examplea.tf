resource "aws_imagebuilder_image_recipe" "examplea" {
  block_device_mapping {
    device_name = "/dev/xvdb"

    ebs {
      //check
      encrypted             = true
      delete_on_termination = true
      volume_size           = 100
      volume_type           = "gp2"
      kms_key_id            = var.kms_key.arn
    }
  }

  component {
    component_arn = aws_imagebuilder_component.examplea.arn
  }

  name         = "examplea"
  parent_image = "arn:aws:imagebuilder:${data.aws_region.current.name}:aws:image/amazon-linux-2-x86/x.x.x"
  version      = "1.0.0"

  tags = var.common_tags
}
