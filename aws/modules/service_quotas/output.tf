output "adjustable" {
 description = "Whether the service quota can be increased"
 value       = aws_servicequotas_service_quota.example.adjustable
}

output "arn" {
 description = "Amazon Resource Name (ARN) of the service quota"
 value       = aws_servicequotas_service_quota.example.arn
}

output "default_value" {
 description = "Default value of the service quota"
 value       = aws_servicequotas_service_quota.example.default_value
}

output "id" {
 description = "Service code and quota code, separated by a front slash (/)"
 value       = aws_servicequotas_service_quota.example.id
}

output "quota_name" {
 description = "name of quota"
 value       = aws_servicequotas_service_quota.example.quota_name
}

output "service_name" {
 description = " name of service"
 value       = aws_servicequotas_service_quota.example.service_name
}

