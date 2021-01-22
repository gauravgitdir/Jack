resource "aws_swf_domain" "foo" {
  name                                        = var.name
  description                                 = var.description
  workflow_execution_retention_period_in_days = var.workflow_execution_retention_period_in_days
 
  tags = {
    Owner = "TF-Squad"
  }

}

