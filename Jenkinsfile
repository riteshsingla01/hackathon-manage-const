pipeline {

  agent {
    node {
      label 'master'
    }  
  }
  
  stages {
    
    stage('Set Terraform path') {
      steps {
         script {
            def tfHome = tool name: 'Terraform'
            env.PATH = "${tfHome}:${env.PATH}"
         }
         sh 'terraform version'
      }
    }
    
  }

}
