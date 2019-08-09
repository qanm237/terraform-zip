locals {
  service_account_path ="./omega-monolith-239910-86488e994b69.json" 
}

provider "google" {
  credentials = "${file(local.service_account_path)}"
  project     = "${var.project_name}"
  region      = "${var.region_name}"
}
