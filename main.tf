provider "google" {
    credentials = file(var.gcp_credentials)
    project = var.gcp_project_id
    region = var.gcp_region
}
terraform {
  backend "gcs" {
    bucket = "c4o-bamit-tfstate-prod"
    prefix = "terraform/state"
  }
}
