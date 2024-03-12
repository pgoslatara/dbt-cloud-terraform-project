resource "dbtcloud_job" "ci_job" {
  dbt_version    = var.dbt_version
  environment_id = dbtcloud_environment.ci_environment.environment_id
  execute_steps = [
    "dbt --warn-error build --select state:modified+ --fail-fast"
  ]
  generate_docs            = false
  deferring_environment_id = dbtcloud_environment.prod_environment.environment_id
  name                     = "CI Job"
  num_threads              = 8
  project_id               = dbtcloud_project.padraic_dbt_cloud_terraform_project.id
  run_generate_sources     = false
  triggers = {
    "custom_branch_only" : false, # This should be true but I don't have GitHub integrated with dbt Cloud so I can't set this
    "github_webhook" : true,
    "git_provider_webhook" : true,
    "schedule" : false
  }
  # this is the default that gets set up when modifying jobs in the UI
  # this is not going to be used when schedule is set to false
  schedule_days = [0, 1, 2, 3, 4, 5, 6]
  schedule_type = "days_of_week"
}

resource "dbtcloud_job" "daily_job" {
  dbt_version    = var.dbt_version
  description    = "Runs `dbt build` at 2:30 am on weekdays."
  environment_id = dbtcloud_environment.prod_environment.environment_id
  execute_steps = [
    "dbt build"
  ]
  generate_docs        = true
  is_active            = true
  name                 = "Daily Job"
  num_threads          = 8
  project_id           = dbtcloud_project.padraic_dbt_cloud_terraform_project.id
  run_generate_sources = true
  target_name          = "prod"
  triggers = {
    "custom_branch_only" : false,
    "github_webhook" : false,
    "git_provider_webhook" : false,
    "schedule" : true
  }
  schedule_cron = "30 2 * * 1-5"
  schedule_type = "custom_cron"
}
