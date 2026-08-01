pipeline {
    agent any

    stages {
        stage('Terraform Version') {
            steps {
                sh 'terraform version'
            }
        }

        stage('Repository Inhalt') {
            steps {
                sh 'ls -la'
            }
        }
    }
}