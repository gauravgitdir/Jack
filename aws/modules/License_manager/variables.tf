variable "name" {
  type        = string
  description = "(Required) Name of the license configuration."
}

variable "description" {
  type        = string
  description = "Name of the license configuration."
}

variable "license_counting_type" {
  type        = string
  description = "(Required) Dimension to use to track license inventory. "
  default     = "Instance"
}

variable "license_count" {
  type        = number
  description = "(Optional) Number of licenses managed by the license configuration."
}

variable "license_count_hard_limit" {
  type        =   bool
  description = " (Optional) Sets the number of available licenses as a hard limit."
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the bucket."
  type        = map(string)
  default     = {}
}

