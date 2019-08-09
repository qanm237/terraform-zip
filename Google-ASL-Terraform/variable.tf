variable "region_name" {
  type = "string"
  default = "us-central1"
}

variable "project_name" {
  type = "string"
  default = "omega-monolith-239910"
}

variable "composer_gcs_cloudbuild"{
  type = "string"
  default = ""
}

variable "service_account_for_composer"{
  type = "string"
  default = "301657910823-compute@developer.gserviceaccount.com"
}