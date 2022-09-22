variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "subnet_id" {
  type        = string
  description = "(optional) describe your variable"
}

variable "security_group_ids" {
  type        = list(string)
  description = "(optional) describe your variable"
}

variable "public_key" {
  type        = string
  description = "public key material"
}
