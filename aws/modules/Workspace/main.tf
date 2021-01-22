resource "aws_workspaces_workspace" "tfsquad" {
  directory_id = var.directory_id
  bundle_id    = var.bundle_id 
  user_name    = var.user_name
  tags          = var.tags
# These are optional values you can enable them as per your need
/*  root_volume_encryption_enabled = true
  user_volume_encryption_enabled = true
  volume_encryption_key          = "alias/aws/workspaces"

  workspace_properties {
    compute_type_name                         = "VALUE"
    user_volume_size_gib                      = 10
    root_volume_size_gib                      = 80
    running_mode                              = "AUTO_STOP"
    running_mode_auto_stop_timeout_in_minutes = 60
  }
*/
}
