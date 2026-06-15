resource "google_storage_bucket" "my-bucket" {
  name                        = "github-action-bucket"
  location                    = "US"
  force_destroy               = true
  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
}