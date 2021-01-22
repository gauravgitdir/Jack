// Media Convert Outputs 

output "identifier" {
  description = "Queue identifier"
  value       =  aws_media_convert_queue.test.id
}

output "queue_arn" {
  description = "The Arn of the queue"
  value       =  aws_media_convert_queue.test.arn
}


// Media Package Output  
 
output "channel_id" {
  description = "A unique identifier describing the channel"
  value       =  aws_media_package_channel.kittens.id
}


output "channel_arn" {
  description = "The Arn of the channel"
  value       =  aws_media_package_channel.kittens.arn
}


// Media Store Output

output "dns_endpoint" {
  description = "The DNS Endpoint of Container"
  value       = aws_media_store_container.example.endpoint 
}





