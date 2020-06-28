pipeline {
  agent any
  stages {
    stage('init') {
      steps {
        echo 'Starting the Pipeline of static-website'
      }
    }

    stage('build') {
      steps {
        sh '''
          cat index.html
        '''
      }
    }

    stage('deploy to staging') {
        steps {
          timeout(time: 5, unit: 'DAYS') {
            input message: 'Approve staging deployment?'
          }
          echo 'Deploying to staging'
        }

        post {
          success {
            echo 'Deployment to Staging DONE'
          }

          failure {
            echo 'Deployment to Staging failed !!!'
          }
        }
    }
  }
}
