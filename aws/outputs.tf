output "this_security_group_id" {
  value = module.security-group[*].this_security_group_id
}

//-----------------------------------

// Output of EC2 Modules
output "id" {
  description = "List of IDs of instances"
  value       = module.ec2-instance[*].id
}

output "arn" {
  description = "List of ARNs of instances"
  value       = module.ec2-instance[*].arn
}

output "availability_zone" {
  description = "List of availability zones of instances"
  value       = module.ec2-instance[*].availability_zone
}

output "key_name" {
  description = "List of key names of instances"
  value       = module.ec2-instance[*].key_name
}

output "public_ip" {
  description = "List of public IP addresses assigned to the instances, if applicable"
  value       = module.ec2-instance[*].public_ip
}

output "security_groups" {
  description = "List of associated security groups of instances"
  value       = module.ec2-instance[*].security_groups
}

output "vpc_security_group_ids" {
  description = "List of associated security groups of instances, if running in non-default VPC"
  value       = module.ec2-instance[*].vpc_security_group_ids
}

output "subnet_id" {
  description = "List of IDs of VPC subnets of instances"
  value       = module.ec2-instance[*].subnet_id
}

output "instance_state" {
  description = "List of instance states of instances"
  value       = module.ec2-instance[*].instance_state
}

output "tags" {
  description = "List of tags of instances"
  value       = module.ec2-instance[*].tags
}

output "instance_count" {
  description = "Number of instances to launch specified as argument to this module"
  value       = module.ec2-instance[*].instance_count
}

// ------------------------------------

// EFS Output
output "efs_arn" {
  description = "EFS ARN"
  value       = module.efs[*].arn
}

output "efs_id" {
  description = "EFS ID"
  value       = module.efs[*].id
}

output "efs_security_group_id" {
  description = "EFS Security Group ID"
  value       = module.efs[*].id
}


// -------------------------------

// S3 Bucket Output
output "this_s3_bucket_id" {
  description = "The name of the bucket."
  value       = module.s3-bucket[*].this_s3_bucket_id
}

output "this_s3_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = module.s3-bucket[*].this_s3_bucket_arn
}


output "this_s3_bucket_bucket_domain_name" {
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  value       = module.s3-bucket[*].this_s3_bucket_bucket_domain_name
}

output "this_s3_bucket_hosted_zone_id" {
  description = "The Route 53 Hosted Zone ID for this bucket's region."
  value       = module.s3-bucket[*].this_s3_bucket_hosted_zone_id
}

output "this_s3_bucket_region" {
  description = "The AWS region this bucket resides in."
  value       = module.s3-bucket[*].this_s3_bucket_region
}

//------------------------------

// Cloudtrail Output

output "cloudtrail_arn" {
  description = "CloudTrail ARN"
  value       = module.cloudtrail[*].cloudtrail_arn
}

output "cloudtrail_home_region" {
  description = "CloudTrail Home Region"
  value       = module.cloudtrail[*].cloudtrail_home_region
}

output "cloudtrail_id" {
  description = "CloudTrail ID"
  value       = module.cloudtrail[*].cloudtrail_id
}

//-----------------------------------

// SNS Output
output "this_sns_topic_arn" {
  description = "ARN of SNS topic"
  value       = module.sns[*].this_sns_topic_arn
}

//----------------------------------------

// SQS Output
output "this_sqs_queue_arn" {
  description = " The ARN of the SQS queue"
  value       = module.sqs[*].this_sqs_queue_arn
}

output "this_sqs_queue_id" {
  description = "The URL for the created Amazon SQS queue"
  value       = module.sqs[*].this_sqs_queue_id
}

output "this_sqs_queue_name" {
  description = "The name of the SQS queue"
  value       = module.sqs[*].this_sqs_queue_name
}

// ----------------------------

// WAF Output
output "waf_acl_id" {
  description = "WAF ACL ID generated by the module"
  value       = module.waf[*].waf_acl_id
}

//--------------------------------------


// Billing-Alarm Output

output "sns_topic" {
  value       = module.billing-alarm[*].sns_topic
  description = "Outputs the SNS Topic to be subscribed to manually."
}


//----------------------



// Route53 Output

output "ns_servers" {
  value = module.route53[*].ns_servers
}

output "zone_id" {
  value = module.route53[*].zone_id
}

//------------------------


// Amazon Aurora Output

// The 'writer' endpoint for the cluster
output "aurora_cluster_endpoint" {
  value = module.aurora[*].cluster_endpoint
}

// List of all DB instance endpoints running in cluster
output "aurora_all_instance_endpoints_list" {
  value = module.aurora[*].all_instance_endpoints_list
}

// A read-only endpoint for the Aurora cluster, automatically load-balanced across replicas
output "aurora_reader_endpoint" {
  value = module.aurora[*].reader_endpoint
}

// The ID of the RDS Cluster
output "aurora_cluster_identifier" {
  value = module.aurora[*].cluster_identifier
}


//-----------------------------------------



// KMS Module Output

output "kms_key_arn" {
  description = "Key ARN."
  value       = module.kms[*].key_arn
}

output "kms_key_id" {
  description = "Key ID."
  value       = module.kms[*].key_id
}

output "kms_alias_arn" {
  description = "Alias ARN."
  value       = module.kms[*].alias_arn
}

output "kms_alias_name" {
  description = "Alias name."
  value       = module.kms[*].alias_name
}

output "kms_tags" {
  description = "A mapping of tags to assign to the resource."
  value       = module.kms[*].tags
}


// ECS Module Output

output "this_ecs_cluster_id" {
  value = module.ecs[*].this_ecs_cluster_id
}

output "this_ecs_cluster_arn" {
  value = module.ecs[*].this_ecs_cluster_arn
}

output "this_ecs_cluster_name" {
  description = "The name of the ECS cluster"
  value       = module.ecs[*].this_ecs_cluster_name
}


//--------------------------


// ECR Module Output
output "ecr_arn" {
  description = "Full ARN of the repository."
  value       = module.ecr[*].arn
}

output "ecr_url" {
  description = "The URL of the repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName )"
  value       = module.ecr[*].url
}

//-------------------

// IAM Module Output
output "this_aws_iam_user_arn" {
  description = "The IAM User ARN"
  value       = module.iam-user[*].this_aws_iam_user_arn

}

output "this_aws_iam_user_id" {
  description = "The IAM User ID"
  value       = module.iam-user[*].this_aws_iam_user_id
}

output "this_aws_iam_access_key_id" {
  description = "The access key id"
  value       = module.iam-user[*].this_aws_iam_access_key_id
}

output "this_aws_iam_access_key_secret" {
  description = "The access key secret"
  value       = module.iam-user[*].this_aws_iam_access_key_secret
  sensitive   = true
}

//------------------------

// ACM Module Output

output "this_acm_certificate_arn" {
  description = "The ARN of the certificate"
  value       = module.acm[*].this_acm_certificate_arn
}

output "this_acm_certificate_domain_validation_options" {
  description = "A list of attributes to feed into other resources to complete certificate validation. Can have more than one element, e.g. if SANs are defined. Only set if DNS-validation was used."
  value       = module.acm[*].this_acm_certificate_domain_validation_options
}

output "this_acm_certificate_validation_emails" {
  description = "A list of addresses that received a validation E-Mail. Only set if EMAIL-validation was used."
  value       = module.acm[*].this_acm_certificate_validation_emails
}

output "validation_route53_record_fqdns" {
  description = "List of FQDNs built using the zone domain and name."
  value       = module.acm[*].validation_route53_record_fqdns
}

output "distinct_domain_names" {
  description = "List of distinct domains names used for the validation."
  value       = module.acm[*].distinct_domain_names
}

output "validation_domains" {
  description = "List of distinct domain validation options. This is useful if subject alternative names contain wildcards."
  value       = module.acm[*].validation_domains
}

//-----------------

// Oracle Module Output

output "oracle_db_instance_address" {
  description = "The address of the oracle instance"
  value       = module.oracle[*].this_db_instance_address
}

output "oracle_db_instance_arn" {
  description = "The ARN of the oracle instance"
  value       = module.oracle[*].this_db_instance_arn
}

output "oracle_db_instance_id" {
  description = "The oracle instance ID"
  value       = module.oracle[*].this_db_instance_id
}

output "oracle_db_instance_name" {
  description = "The database name"
  value       = module.oracle[*].this_db_instance_name
}

output "oracle_db_instance_username" {
  description = "The master username for the database"
  value       = module.oracle[*].this_db_instance_username
}

output "oracle_db_instance_port" {
  description = "The database port"
  value       = module.oracle[*].this_db_instance_port
}

output "oracle_db_option_group_id" {
  description = "The db option group id"
  value       = module.oracle[*].this_db_option_group_id
}

output "oracle_db_option_group_arn" {
  description = "The ARN of the db option group"
  value       = module.oracle[*].this_db_option_group_arn
}

//--------------------------------

// mssql Module Output

output "mssql_db_instance_address" {
  description = "The address of the mssql instance"
  value       = module.mssql[*].this_db_instance_address
}

output "mssql_db_instance_arn" {
  description = "The ARN of the mssql instance"
  value       = module.mssql[*].this_db_instance_arn
}

output "mssql_db_instance_id" {
  description = "The mssql instance ID"
  value       = module.mssql[*].this_db_instance_id
}

output "mssql_db_instance_name" {
  description = "The database name"
  value       = module.mssql[*].this_db_instance_name
}

output "mssql_db_instance_username" {
  description = "The master username for the database"
  value       = module.mssql[*].this_db_instance_username
}

output "mssql_db_instance_port" {
  description = "The database port"
  value       = module.mssql[*].this_db_instance_port
}

output "mssql_db_option_group_id" {
  description = "The db option group id"
  value       = module.mssql[*].this_db_option_group_id
}

output "mssql_db_option_group_arn" {
  description = "The ARN of the db option group"
  value       = module.mssql[*].this_db_option_group_arn
}

//--------------------------

// postgresql Module Output

output "postgresql_db_instance_address" {
  description = "The address of the postgresql instance"
  value       = module.postgresql[*].this_db_instance_address
}

output "postgresql_db_instance_arn" {
  description = "The ARN of the postgresql instance"
  value       = module.postgresql[*].this_db_instance_arn
}

output "postgresql_db_instance_id" {
  description = "The postgresql instance ID"
  value       = module.postgresql[*].this_db_instance_id
}

output "postgresql_db_instance_name" {
  description = "The database name"
  value       = module.postgresql[*].this_db_instance_name
}

output "postgresql_db_instance_username" {
  description = "The master username for the database"
  value       = module.postgresql[*].this_db_instance_username
}

output "postgresql_db_instance_port" {
  description = "The database port"
  value       = module.postgresql[*].this_db_instance_port
}

output "postgresql_db_option_group_id" {
  description = "The db option group id"
  value       = module.postgresql[*].this_db_option_group_id
}

output "postgresql_db_option_group_arn" {
  description = "The ARN of the db option group"
  value       = module.postgresql[*].this_db_option_group_arn
}

//-------------------------------


// CodeBuild Module Output

output "cb_arn" {
  description = "The ARN of the CodeBuild project"
  value       = module.codebuild[*].arn
}

output "cb_id" {
  description = " The name (if imported via name) or ARN (if created via Terraform or imported via ARN) of the CodeBuild project."
  value       = module.codebuild[*].id
}

output "cb_name" {
  description = "The name of the CodeBuild project"
  value       = module.codebuild[*].name
}

output "cb_service_role_name" {
  description = "Name of the Service Role created for CodeBuild."
  value       = module.codebuild[*].service_role_name
}

output "cb_service_role_arn" {
  description = "Amazon Resource Name (ARN) of the Service Role for CodeBuild."
  value       = module.codebuild[*].service_role_arn
}

output "cb_service_role_id" {
  description = "ID of the Service Role created for CodeBuild."
  value       = module.codebuild[*].service_role_id
}


//---------------------------------


// Guardduty Module Output

output "gd_account_id" {
  description = "The AWS account ID of the GuardDuty detector"
  value       = module.guardduty[*].account_id
}

output "gd_id" {
  description = "The ID of the GuardDuty detector"
  value       = module.guardduty[*].id
}



// AWS Backup Module Output

output "aws_backup_vault_id" {
  description = "The name of the vault"
  value       = module.aws_backup_example[*].vault_id
}

output "aws_backup_vault_arn" {
  description = "The ARN of the vault"
  value       = module.aws_backup_example[*].vault_arn
}

output "aws_backup_plan_id" {
  description = "The id of the backup plan"
  value       = module.aws_backup_example[*].plan_id
}

output "aws_backup_plan_arn" {
  description = "The ARN of the backup plan"
  value       = module.aws_backup_example[*].plan_arn
}

output "aws_backup_plan_version" {
  description = "Unique, randomly generated, Unicode, UTF-8 encoded string that serves as the version ID of the backup plan"
  value       = module.aws_backup_example[*].plan_version
}

//---------------------------

// API-GW Module Output

output "apigw_domain_name_arn" {
  description = "Amazon Resource Name (ARN)"
  value       = module.api-gateway[*].domain_name_arn
}

output "apigw_domain_name_id" {
  description = "The internal id assigned to this domain name by API Gateway."
  value       = module.api-gateway[*].domain_name_id
}

output "apigw_api_gateway_rest_api_arn" {
  description = "Amazon Resource Name (ARN)"
  value       = module.api-gateway[*].api_gateway_rest_api_arn
}

output "apigw_api_gateway_rest_api_id" {
  description = "The ID of the REST API"
  value       = module.api-gateway[*].api_gateway_rest_api_id
}

output "apigw_api_gateway_authorizer_id" {
  description = "The ID of the Authorizer"
  value       = module.api-gateway[*].api_gateway_authorizer_id
}

output "apigw_cloudwatch_log_group_arn" {
  description = "The Amazon Resource Name (ARN) specifying the log group."
  value       = module.api-gateway[*].cloudwatch_log_group_arn
}

//------------------------------

// StorageGW Module Output

output "bucket_arn" {
  value = module.gateway[*].bucket_arn
}

//-------------------------


// Secret-manager output

output "secret_ids" {
  description = "Secret id list"
  value       = module.secrets-manager[*].secret_ids
}

output "secret_arns" {
  description = "Secret arn list"
  value       = module.secrets-manager[*].secret_arns
}

# Rotate secrets
output "rotate_secret_ids" {
  description = "Rotate secret id list"
  value       = module.secrets-manager[*].rotate_secret_ids
}

output "rotate_secret_arns" {
  description = "Rotate secret arn list"
  value       = module.secrets-manager[*].rotate_secret_arns
}


//---------------------------------

// Elasticache Module Output

output "ec_elasticache_fqdn" {
  description = "Fully Qualified Domain Name of Elasticache: the endpoint or the CNAME if used"
  value       = module.elasticache[*].elasticache_fqdn
}

output "ec_elasticache_cluster_id" {
  description = "ElastiCache cluster ID"
  value       = module.elasticache[*].elasticache_cluster_id
}

output "ec_elasticache_replication_group_id" {
  description = "elasticache_replication_group resource"
  value       = module.elasticache[*].elasticache_replication_group_id
}

output "ec_elasticache_route53_record_id" {
  description = "aws route53 record resource"
  value       = module.elasticache[*].elasticache_route53_record_id
}

output "ec_security_group_id" {
  description = "aws_security_group resource"
  value       = module.elasticache[*].security_group_id
}

//-------------------------

// Budget Module Output

output "ec2_budget" {
  value = module.budget[*].ec2_budget
}

output "ec2_half_budget" {
  value = module.budget[*].ec2_half_budget
}


//----------------------------

// AWS Neptune Module output

output "neptune_instances" {
  value = module.neptune[*].instances
}

output "neptune_cluster" {
  value = module.neptune[*].cluster
}

output "neptune_subnet" {
  value = module.neptune[*].subnet
}



//-----------------------------


// Resource Group Module Output

output "resource_group_arn" {
  value = module.aws_resource_group[*].rg_arn
}


//-----------------------------


// SimpleDB Module Output

output "simpledb_id" {
  description = "The name of the SimpleDB domain"
  value       = module.aws_simple_db[*].id
}


//----------------------------


// Cloud9 Module Outputs


output "c9_env_id" {
  description = "The ID of the environment"
  value       = module.aws_cloud9[*].env_id
}

output "c9_env_type" {
  description = "The type of the environment"
  value       = module.aws_cloud9[*].env_type
}

output "c9_env_arn" {
  description = "The ARN of the environment"
  value       = module.aws_cloud9[*].env_arn
}


//-----------------------------


// Data Pipeline Module Output


output "pipeline_identifier_id" {
  description = "The identifier of the client certificate"
  value       = module.aws_data_pipeline[*].identifier_id
}



//-----------------------------


// Shield Module Output

output "shield_protection_id" {
  description = "The unique identifier (ID) for the Protection object that is created"
  value       = module.aws_shield[*].shield_protection_id
}


//----------------------------

// Access Analyzer Module Output

output "iam_analyzer_name" {
  description = "Analyzer name"
  value       = module.aws_access_analyzer[*].analyzer_name
}


//----------------------------


// SWF Module Output

output "swf_domain_id" {
  description = "The name of the domain"
  value       = module.aws_swf[*].id
}

output "swf_arn" {
  description = "Amazon Resource Name"
  value       = module.aws_swf[*].arn
}



//----------------------------


// Aws Service Catalog Module Output

output "aws_service_catalog_id" {
  description = "The ID of the Service Catalog Portfolio"
  value       = module.aws_service_catalog[*].id
}


//---------------------------



// AWS Service Quota Module Outputs


output "aws_service_quota_adjustable" {
  description = "Whether the service quota can be increased"
  value       = module.aws_service_quota[*].adjustable
}

output "aws_service_quota_arn" {
  description = "Amazon Resource Name (ARN) of the service quota"
  value       = module.aws_service_quota[*].arn
}

output "aws_service_quota_default_value" {
  description = "Default value of the service quota"
  value       = module.aws_service_quota[*].default_value
}

output "aws_service_quota_id" {
  description = "Service code and quota code, separated by a front slash (/)"
  value       = module.aws_service_quota[*].id
}

output "aws_service_quota_name" {
  description = "name of quota"
  value       = module.aws_service_quota[*].quota_name
}

output "aws_service_quota_service_name" {
  description = " name of service"
  value       = module.aws_service_quota[*].service_name
}



//----------------------------


// Macie Classic Module Outputs 


output "macie_s3_association_id" {
  description = "The ID of the s3 association"
  value       = module.aws_macie_classic[*].s3_association_id
}

output "macie_id" {
  description = "The ID of the association"
  value       = module.aws_macie_classic[*].id
}


//----------------------------


// Directory Service Module Output

output "ds_id" {
  description = "The ID of the directory"
  value       = module.aws_dir_service[*].id
}

output "access_url" {
  description = "The access URL for the directory"
  value       = module.aws_dir_service[*].access_url
}

output "dns_ip_addresses" {
  description = "A list of IP addresses of the DNS servers for the directory or connector"
  value       = module.aws_dir_service[*].dns_ip_addresses
}

output "security_group_id" {
  description = "The ID of the security group created by the directory"
  value       = module.aws_dir_service[*].security_group_id
}



//-----------------------------


// Media Convert Outputs

output "queue_identifier" {
  description = "Queue identifier"
  value       = module.aws_media_service[*].identifier
}

output "media_queue_arn" {
  description = "The Arn of the queue"
  value       = module.aws_media_service[*].queue_arn
}


// Media Package Output

output "channel_id" {
  description = "A unique identifier describing the channel"
  value       = module.aws_media_service[*].channel_id
}


output "channel_arn" {
  description = "The Arn of the channel"
  value       = module.aws_media_service[*].channel_arn
}


// Media Store Output

output "dns_endpoint" {
  description = "The DNS Endpoint of Container"
  value       = module.aws_media_service[*].dns_endpoint
}

//-------------------------

// License_manager Module Output

output "license_id" {
  value = module.license_manager[*].license_id
}

//--------------------------

// Workspace Module output

output "workspace_id" {
  value = module.workspace[*].workspace_id
}

output "workspace_ip_address" {
  value = module.workspace[*].workspace_ip_address
}

output "workspace_computer_name" {
  value = module.workspace[*].workspace_computer_name
}

output "workspace_state" {
  value = module.workspace[*].workspace_state
}
