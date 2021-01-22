// Directory Service Module Variables


variable "name" {
  description = "The fully qualified name for the directory, such as corp.example.com"
  type        = string
}

variable "password" {
  description = "The password for the directory administrator or connector user"
  type        = string
}

variable "size" {
  description = "(Required for SimpleAD and ADConnector) The size of the directory (Small or Large)"
  type        = string
}

variable "vpc_id" {
  description = "The identifier of the VPC that the directory is in"
  type        = string
}

variable "subnet_ids" {
  description = "The identifiers of the subnets for the directory servers (2 subnets in 2 different AZs)"
  type        = list(string)
}

variable "alias" {
  description = "The alias for the directory, unique amongst all aliases in AWS (required for enable_sso)"
  type        = string
}

variable "description" {
  description = "A textual description for the directory"
  type        = string
}

variable "short_name" {
  description = "The short name of the directory, such as CORP"
  type        = string
}

variable "type" {
  description = "Either SimpleAD, ADConnector or MicrosoftAD"
  type        = string
}

variable "edition" {
  description = "(Required for the MicrosoftAD type only) The MicrosoftAD edition (Standard or Enterprise)."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
}

variable "connect_settings" {
  description = "Connector related information about the directory (required for ADConnector)"
  type        = list(string)
}

