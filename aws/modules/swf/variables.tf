variable "name" {
  description = ""
  type        = string
}

variable "description" {
  description = "The domain description"
  type        = string
}

variable "workflow_execution_retention_period_in_days" {
  description = "(Required, Forces new resource) Length of time that SWF will continue to retain information about the workflow execution after the workflow execution is complete, must be between 0 and 90 days"
  type        = string
}
