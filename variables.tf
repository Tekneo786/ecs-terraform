variable "project_name" {
  description = "Project name for tagging and naming"
  type        = string
  default     = "ecs-terraform"
}

variable "container_port" {
  description = "Port the application listens on"
  type        = number
  default     = 80
}
