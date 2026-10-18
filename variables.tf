variable "environment" {
  type        = string
  description = "Deployment environment"
  default     = "qa"
  validation {
    condition     = contains(["dev", "qa", "prod"], var.environment)
    error_message = "Environment must be one of: dev, qa, prod."
  }
}
variable "aws_region" {
  type    = string
  default = "ap-south-1"
}