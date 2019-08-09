resource "google_app_engine_application" "app" {
	project = "${var.project_name}" 
	location_id = "us-central" 
}
