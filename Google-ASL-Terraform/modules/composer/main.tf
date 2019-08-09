resource "google_composer_environment" "test" {
  name = "datapipeline-orchestration"
  region = "us-east1"
  config {
    node_count = 3
    node_config {
      zone = "us-east1-b"
      machine_type = "n1-standard-2"
      service_account = "${var.service_account_for_composer}"
    }
  }   
} 
