pipeline {

  agent {
    node {
      label 'master'
    }  
  }
  
  parameters {
      string(name: 'credential', defaultValue : 'awscredentials', description: "Jenkins credential that provides the AWS access key and secret.")
  }

  options {
    disableConcurrentBuilds()
    timeout(time: 1, unit: 'HOURS')
    ansiColor('xterm')
  }

  stages {
    
    stage('Build image') {
      steps {
         script {
            sh 'docker build -t 058669483418.dkr.ecr.us-east-1.amazonaws.com/hackathon:latest .'
         }
      }
    }

    stage('Push image') {
      steps {
         script {
           docker.withRegistry('https://058669483418.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:params.credential') {
             sh 'docker push 058669483418.dkr.ecr.us-east-1.amazonaws.com/hackathon:latest'
           }
         }
      }
    }
    
  }

}
