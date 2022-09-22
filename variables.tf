variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}


variable "component" {
  type = string
}

variable "component_name" {
  default = "examplea"
}

variable "platform" {
  default = "Linux"
  validation {
    condition     = can(regex("Windows|Linux", var.platform))
    error_message = "Must be Windows or Linux ."
  }
}

variable "component_version" {
  default = "1.0.0"
}

variable "instance_profile_name" {
  default = "examplea"
}

variable "kms_key" {

}


variable "subnet_id" {
  type        = string
  description = "(optional) describe your variable"
}

variable "security_group_ids" {
  type        = list(string)
  description = "(optional) describe your variable"
}
