pipeline {
    agent {
        label 'AGENT-1'
    }
    options {
        timeout(time: 30, unit: 'MINUTES')
    }
  
    stages {
        stage('Init') {
            steps {
                sh """
                  ls -ltr
                """
            }
        }
        stage('plan') {
            steps {
                sh 'echo this is test' 
                
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo this is deploy'
            }
        }
        stage ("print params"){
          steps{
                echo "Hello ${params.PERSON}"
                echo "Biography: ${params.BIOGRAPHY}"
                echo "Toggle: ${params.TOGGLE}"
                echo "Choice: ${params.CHOICE}"
                echo "Password: ${params.PASSWORD}"
                echo "triggered test again"
                echo "some failure"
            }
        }
    }
    post { 
        always { 
            echo 'I will always say Hello again!'
        }
        success { 
            echo 'I will run when pipeline is success'
        }
        failure { 
            echo 'I will run when pipeline is failure'
        }
    }
}
