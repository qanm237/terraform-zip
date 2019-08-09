output "composer_gcs"{
 value = "${substr(google_composer_environment.test.config.0.dag_gcs_prefix, 0 , length(google_composer_environment.test.config.0.dag_gcs_prefix)-5)}"
}