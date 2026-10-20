variable "environment" {
  type        = string
  description = "Deployment environment"
  validation {
    condition     = contains(["dev", "qa", "prod"], var.environment)
    error_message = "Environment must be one of: dev, qa, prod."
  }
}
variable "aws_region" {
  type    = string

}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "ecommerce"
}