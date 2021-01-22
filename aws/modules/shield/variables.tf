variable "name" {
  description = "Name to be used on all resources as prefix"
  type        = string
}

variable "resource_arn" {
  description = "(Required) The ARN (Amazon Resource Name) of the resource to be protected"
  type        = string 
}

