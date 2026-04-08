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
        sh '''
        docker rm -f node-container || true
        docker run -d -p 3000:80 --name node-container node-app
        '''
      }
    }
  }
}
