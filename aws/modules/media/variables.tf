// aws_media_convert_queue

variable "name" {
  description = "A unique identifier describing the queue"
  type        = string
}


// aws_media_package_channel

variable "channel_id" {
  description = "A unique identifier describing the channel"
  type        = string
}


// aws_media_store_container

variable "store_name" {
  description = "The name of the container. Must contain alphanumeric characters or underscores"
  type        = string
}

