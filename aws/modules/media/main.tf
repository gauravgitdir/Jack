// AWS Media Covert

resource "aws_media_convert_queue" "test" {
  name = var.name
}

// AWS Media Package

resource "aws_media_package_channel" "kittens" {
  channel_id  = var.channel_id
}


// AWS Media Store

resource "aws_media_store_container" "example" {
  name = var.store_name
}


