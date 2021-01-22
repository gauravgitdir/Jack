output "env_id" {
  description = "The ID of the environment"
  value       = aws_cloud9_environment_ec2.example.id
}

output "env_type" {
  description = "The type of the environment"
  value       = aws_cloud9_environment_ec2.example.type
}

output "env_arn" {
  description = "The ARN of the environment"
  value       = aws_cloud9_environment_ec2.example.arn
}

