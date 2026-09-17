variable "app_name" {
  description = "The application name"
  type        = string
  default     = "cloudpath-service"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "local"
}

variable "container_port" {
  description = "Port exposed by the microservice container"
  type        = number
  default     = 3000
}