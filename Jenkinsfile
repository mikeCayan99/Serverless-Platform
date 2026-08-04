pipeline {
    agent any

    options {
        timestamps()
        disableConcurrentBuilds()
        buildDiscarder(logRotator(numToKeepStr: '10'))
    }

    environment {
    TF_IN_AUTOMATION = 'true'
    TF_INPUT         = 'false'
}
    parameters {
        booleanParam(
            name: 'RUN_FORMAT_CHECK',
            defaultValue: true,
            description: 'Run terraform fmt check'
        )

        booleanParam(
            name: 'RUN_VALIDATE',
            defaultValue: true,
            description: 'Run terraform validate'
        )
    }

    
    stages {
        stage('Checkout prüfen') {
            steps {
                sh 'ls -la'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init -backend=false'
            }
        }

        stage('Terraform Format') {
            steps {
                sh 'terraform fmt -check -recursive'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }
    }

    post {
        success {
            echo 'Terraform Pipeline erfolgreich.'
        }

        failure {
            echo 'Terraform Pipeline fehlgeschlagen.'
        }

        always {
            echo 'Workspace wird bereinigt.'
            cleanWs()
        }
    }
}