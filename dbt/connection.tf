resource "dbtcloud_bigquery_connection" "bq_connection" {
  project_id                  = dbtcloud_project.padraic_dbt_cloud_terraform_project.id
  name                        = "padraic_sandbox_connection"
  type                        = "bigquery"
  is_active                   = true
  gcp_project_id              = "padraic-slattery-sndbx-o"
  timeout_seconds             = 100
  private_key_id              = var.private_key_id
  private_key                 = var.private_key
  client_email                = var.client_email
  client_id                   = var.client_id
  auth_uri                    = var.auth_uri
  token_uri                   = var.token_uri
  auth_provider_x509_cert_url = var.auth_provider_x509_cert_url
  client_x509_cert_url        = var.client_x509_cert_url
  retries                     = 3
}
