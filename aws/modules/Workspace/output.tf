output "workspace_id"{
  value = aws_workspaces_workspace.tfsquad.id
}

output "workspace_ip_address"{
  value = aws_workspaces_workspace.tfsquad.ip_address
}

output "workspace_computer_name"{
  value = aws_workspaces_workspace.tfsquad.computer_name
}

output "workspace_state"{
  value = aws_workspaces_workspace.tfsquad.state
}