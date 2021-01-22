variable "name" {
    type = string
    default = "terraform-kinesis-test"
    description = "(optional) describe your variable"
}

variable "shard_count" {
    type = number
    default = 1
    description = "(optional) describe your variable"
}

variable "retention_period" {
    type = number
    default = 48
    description = "(optional) describe your variable"
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the bucket."
  type        = map(string)
  default     = {}
}
