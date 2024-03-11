resource "dbtcloud_repository" "padraic_dbt_cloud_terraform_project" {
  project_id         = dbtcloud_project.padraic_dbt_cloud_terraform_project.id
  remote_url         = "git@github.com:pgoslatara/dbt-terraform-jobs.git"
  git_clone_strategy = "deploy_key"
}

# terraform import github_repository.padraic_dbt_cloud_terraform_project dbt-cloud-terraform-project
resource "github_repository" "padraic_dbt_cloud_terraform_project" {
  name = "dbt-cloud-terraform-project"
}

resource "github_repository_deploy_key" "deploy_key" {
  title      = "Repository test key"
  repository = github_repository.padraic_dbt_cloud_terraform_project.name
  key        = dbtcloud_repository.padraic_dbt_cloud_terraform_project.deploy_key
  read_only  = false
}
