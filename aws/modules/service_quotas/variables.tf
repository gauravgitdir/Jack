variable "quota_code" {
  description = "Code of the service quota to track. For example: L-F678F1CE"
  type        = string
} 

variable "service_code" {
  description = "Code of the service to track. For example: vpc"
  type        = string
}

variable "value" {
  description = "Float specifying the desired value for the service quota"
  type        = string
}
