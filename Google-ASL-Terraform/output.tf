output "composer" {
 description = "The Cloud Storage created for the data pipeline composer environment."
 value       = "${module.composer.composer_gcs}"
}