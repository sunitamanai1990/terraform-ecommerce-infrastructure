locals {
  storage_requirements = {
    assets = "product-assets"
    logs   = "application-logs"
    backup = "backup"
  }
  versioning_enabled = var.environment == "prod" ? true : false
}