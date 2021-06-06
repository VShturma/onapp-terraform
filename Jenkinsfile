node('docker-onapp-agent') {
  stage('terraform-vcloud') {
    sh '''cd vcloud
    terraform init -backend-config=$backend
    terraform apply -target=module.vcloud -var-file=$vcloud_tfvars -auto-approve
    terraform output -json > terraform_outputs.json'''    
  }
}
