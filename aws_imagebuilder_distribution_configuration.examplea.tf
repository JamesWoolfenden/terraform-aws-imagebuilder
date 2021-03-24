resource "aws_imagebuilder_distribution_configuration" "examplea" {
  name = var.dist_name

  distribution {
    ami_distribution_configuration {
      ami_tags = {
        CostCenter = "IT"
      }

      name = "examplea-{{ imagebuilder:buildDate }}"

      launch_permission {
        user_ids = var.user_ids
      }
    }

    region = data.aws_region.current.name
  }
  tags = var.common_tags
}


variable "dist_name" {
  type    = string
  default = "examplea"
}

variable "user_ids" {
  type    = list(any)
  default = []
}
