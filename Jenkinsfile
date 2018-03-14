pipeline {
    agent any

    triggers {
        pollSCM('* * * * *')
    }

    stages{
        stage('Build'){
            steps {
                echo 'Building'
            }
            post{
                success {
                    echo 'Upload image'
                    
                }
            }
        }
        stage('Deploy to QA'){
            steps {
                echo ‘Docker deploy staging’
            }
        }
        
        stage('Deploy to Staging'){
            steps {
                timeout(time:5, unit:'DAYS'){
                    input message: 'Approve Staging Deployment?'
                }

                 echo ‘Docker deploy staging’
            }
            post{
                success{
                    echo 'Code deployed to Staging.'
                }

                failure {
                    echo 'Depmoyment failed.'
                }
            }
        }
        
    }
}