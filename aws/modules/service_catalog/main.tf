resource "aws_servicecatalog_portfolio" "portfolio" {
  name          = var.name
  description   = var.description 
  provider_name = var.provider_name
}

