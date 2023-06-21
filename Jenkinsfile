pipeline {
  agent any

  environment {
    AWS_ACCESS_KEY_ID = 'your_access_key_id'
    AWS_SECRET_ACCESS_KEY = 'your_secret_access_key'
    AWS_DEFAULT_REGION = 'ap-south-1'
  }

  stages {
    stage('git') {
      steps {
        sh 'git pull https://github.com/vrk2299/terr'
      }
    }

    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }

    stage('Terraform Plan') {
      steps {
        sh 'terraform plan -out=tfplan'
      }
    }

    stage('Terraform Apply') {
      steps {
        sh 'terraform apply tfplan'
      }
    }
  }
}
