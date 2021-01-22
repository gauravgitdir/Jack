variable "directory_id" {
	type    = string
	description = "(Required) The ID of the directory for the WorkSpace."
}

variable "bundle_id" {
	type    = string
	description = "(Required) The ID of the bundle for the WorkSpace."
}


variable "user_name" {
	type    = string
	description = " (Required) The user name of the user for the WorkSpace."
}


variable "tags" {
  description = "(Optional) A mapping of tags to assign to the bucket."
  type        = map(string)
  default     = {}
}
