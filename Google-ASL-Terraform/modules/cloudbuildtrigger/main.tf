resource "google_cloudbuild_trigger" "filename-trigger" {
  trigger_template {
    branch_name = "master"
    repo_name   = "google_asl_repo"
  }

  substitutions = {
    _GCS_BUCKET = "${var.composer_gcs_cloudbuild}"
  }

  filename = "./cloudbuild.yaml"
}
