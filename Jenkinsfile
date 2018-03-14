pipeline {
    agent any

    triggers {
        pollSCM('* * * * *')
    }

    stages{
        stage('Init'){
            steps {
                echo 'Testing...'
                docker build -t martinliu/uptick-node:t1 .
            }
        }
        stage('Build'){
            steps {
                echo 'Building...'
            }
        }
        
        stage('Deploy'){
            steps {
                echo 'Code Deployed....'
            }
        }
        
    }
}