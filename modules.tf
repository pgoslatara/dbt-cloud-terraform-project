module "dbt" {
  source = "./dbt"

  auth_provider_x509_cert_url = var.auth_provider_x509_cert_url
  auth_uri                    = var.auth_uri
  client_email                = var.client_email
  client_id                   = var.client_id
  client_x509_cert_url        = var.client_x509_cert_url
  dbt_version                 = var.dbt_version
  private_key_id              = var.private_key_id
  private_key                 = var.private_key
  token_uri                   = var.token_uri
}
