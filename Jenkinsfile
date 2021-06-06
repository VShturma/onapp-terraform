node('docker-onapp-agent') {
  stage('Checkout repo') {
    checkout scm
  }
  stage('terraform-vcloud') {
    dir('vcloud') {
      withCredentials([file(credentialsId: 'vcloud-tfvars', variable: 'vcloud_tfvars'), file(credentialsId: 'backend.config', variable: 'vcloud_backend')]) {
        sh '''terraform init -backend-config=$vcloud_backend
        terraform apply -target=module.vcloud -var-file=$vcloud_tfvars -auto-approve
        terraform output -json > terraform_outputs.json'''
      }
    }
  }
}
