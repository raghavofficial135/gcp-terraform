terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = "ipom-manufacturing"
  region  = "us-central1"
}

resource "google_storage_bucket" "my-bucket" {
  name                        = "rnaray-github-action-bucket"
  project                     = "ipom-manufacturing"
  location                    = "US"
  force_destroy               = true
  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
}