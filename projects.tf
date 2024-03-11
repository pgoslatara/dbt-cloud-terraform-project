resource "dbtcloud_project" "padraic_dbt_cloud_terraform_project" {
  name = "padraic_dbt_cloud_terraform_project"
}

resource "dbtcloud_project_connection" "dbt_project_connection" {
  project_id    = dbtcloud_project.padraic_dbt_cloud_terraform_project.id
  connection_id = dbtcloud_bigquery_connection.bq_connection.connection_id
}

resource "dbtcloud_project_repository" "dbt_project_repository" {
  project_id    = dbtcloud_project.padraic_dbt_cloud_terraform_project.id
  repository_id = dbtcloud_repository.padraic_dbt_cloud_terraform_project.repository_id
}

resource "dbtcloud_bigquery_credential" "my_credential" {
  project_id  = dbtcloud_project.padraic_dbt_cloud_terraform_project.id
  dataset     = "my_bq_dataset"
  num_threads = 16
}
