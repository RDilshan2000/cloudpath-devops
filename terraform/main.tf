terraform {
  required_version = ">= 1.5.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

# Production best practice: Generating deployment spec configurations locally
resource "local_file" "k8s_runtime_config" {
  content = jsonencode({
    application = var.app_name
    environment = var.environment
    port        = var.container_port
    managed_by  = "terraform"
  })
  filename = "${path.module}/generated_runtime_config.json"
}