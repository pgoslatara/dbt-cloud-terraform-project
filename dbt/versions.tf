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
