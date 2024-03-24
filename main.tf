terraform {
  required_version = ">=1.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=4.40.0"
    }
  }
}

provider "google" {
  project = "terraform101-417809"
  region  = "asia-east1"
}

resource "google_storage_bucket" "quick-start-gcs" {
  name          = "quick-start-gcs-bucket-terraform101-workflow"
  location      = "asia-east1"
  force_destroy = "true"
}
