pipeline {
  agent any
  stages {
    stage('init') {
      steps {
        echo "Starting the Pipeline of static-website"
      }
    }

    stage('build') {
      steps {
        sh '''
          cat index.html
        '''
      }
    }
  }
}