terraform {
  required_providers {
    dbtcloud = {
      source  = "dbt-labs/dbtcloud"
      version = "0.2.21"
    }
    github = {
      source  = "integrations/github"
      version = "6.0.0"
    }
  }
}

provider "dbtcloud" {
  host_url = "https://cloud.getdbt.com/api"
}

provider "github" {
  token = var.github_token
}

provider "google" {
  project = "padraic-slattery-sndbx-o"
  region  = "europe-west4"
  zone    = "europe-west4-c"
}
