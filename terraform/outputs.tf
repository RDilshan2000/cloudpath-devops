output "deployed_application" {
  description = "Application name deployed"
  value       = var.app_name
}

output "environment_type" {
  description = "Environment identifier"
  value       = var.environment
}

output "config_file_path" {
  description = "Generated runtime config path"
  value       = local_file.k8s_runtime_config.filename
}