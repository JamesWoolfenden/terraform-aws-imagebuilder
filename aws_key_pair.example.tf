resource "aws_key_pair" "pike" {
  public_key = var.public_key
}


variable "public_key" {
  type        = string
  description = "public key material"
}
