pipeline {

  agent {
    node {
      label 'master'
    }  
  }
  
  stages {
    
    stage('Set Terraform path') {
      steps {
         sh 'terraform version'
      }
    }
    
  }

}
