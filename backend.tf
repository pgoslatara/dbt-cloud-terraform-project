terraform {
  backend "gcs" {
    bucket = "dbt-cloud-terraform-project"
    prefix = "terraform/state"
  }
}
