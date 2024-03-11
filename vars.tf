variable "dbt_version" {
  type    = string
  default = "1.7.0-latest"
}

variable "private_key_id" {
  sensitive = true
  type      = string
}

variable "private_key" {
  sensitive = true
  type      = string
}

variable "client_email" {
  sensitive = true
  type      = string
}

variable "client_id" {
  sensitive = true
  type      = string
}

variable "auth_uri" {
  sensitive = true
  type      = string
}

variable "token_uri" {
  sensitive = true
  type      = string
}

variable "auth_provider_x509_cert_url" {
  sensitive = true
  type      = string
}

variable "client_x509_cert_url" {
  sensitive = true
  type      = string
}

variable "dbt_host_url" {
  type = string
}

variable "dbt_token" {
  sensitive = true
  type      = string
}

variable "github_token" {
  sensitive = true
  type      = string
}
