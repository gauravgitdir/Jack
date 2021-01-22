resource "aws_servicequotas_service_quota" "example" {
  quota_code   = var.quota_code
  service_code = var.service_code
  value        = var.value
}

