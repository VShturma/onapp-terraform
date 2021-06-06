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

  stage('generate inventory') {
    sh 'python3 inventory_creator.py'
  }

  stage('ansible-vcloud') {
    ansiblePlaybook credentialsId: 'ssh-jenkins-agent', disableHostKeyChecking: true, inventory: 'inventory', playbook: 'ansible/site.yml'
  }
}
