module "appengine" {
  source = "./modules/appengine"

  project_name = "${var.project_name}"
}

module "sourcerepo" {
  source = "./modules/sourcerepo"

  project_name = "${var.project_name}"
}

module "composer" {
  source = "./modules/composer"

  service_account_for_composer = "${var.service_account_for_composer}"
}	

module "cloudbuildtrigger" {
  source = "./modules/cloudbuildtrigger"

  composer_gcs_cloudbuild = "${module.composer.composer_gcs}" 
}

module "repomirroring" {
	source = "./modules/repomirroring"
}
