resource "dbtcloud_environment" "ci_environment" {
  dbt_version = var.dbt_version
  name        = "CI"
  project_id  = dbtcloud_project.padraic_dbt_cloud_terraform_project.id
  type        = "deployment"
}

resource "dbtcloud_environment" "dev_environment" {
  dbt_version = var.dbt_version
  name        = "dev"
  project_id  = dbtcloud_project.padraic_dbt_cloud_terraform_project.id
  type        = "development"
}

resource "dbtcloud_environment" "prod_environment" {
  dbt_version     = var.dbt_version
  deployment_type = "production"
  name            = "prod"
  project_id      = dbtcloud_project.padraic_dbt_cloud_terraform_project.id
  type            = "deployment"
}
