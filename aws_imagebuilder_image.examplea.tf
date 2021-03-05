resource "aws_imagebuilder_image" "examplea" {
  distribution_configuration_arn   = aws_imagebuilder_distribution_configuration.examplea.arn
  image_recipe_arn                 = aws_imagebuilder_image_recipe.examplea.arn
  infrastructure_configuration_arn = aws_imagebuilder_infrastructure_configuration.examplea.arn
}