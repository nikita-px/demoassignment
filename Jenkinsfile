pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        sh 'docker build -t node-app .'
      }
    }

    stage('Run') {
      steps {
        sh 'docker run -d -p 3000:3000 node-app'
      }
    }
  }
}
