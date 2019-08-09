resource "null_resource" "deployment" {
	provisioner "local-exec" {
	  command = <<EOF
		gcloud config set account '301657910823-compute@developer.gserviceaccount.com'
		sudo apt-get install git -y
		git config --global credential.helper gcloud.sh
		git clone https://source.developers.google.com/p/omega-monolith-239910/r/Google-ASL
		cd Google-ASL
		git remote add google https://source.developers.google.com/p/storied-oasis-245614/r/google_asl_repo
		git push --all google
				EOF
	}
}