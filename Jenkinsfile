pipeline {
    agent any

    options {
        timestamps()
        disableConcurrentBuilds()
        buildDiscarder(logRotator(numToKeepStr: '10'))
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

    environment {
        TF_IN_AUTOMATION = 'true'
        TF_INPUT         = 'false'
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

        stage('Terraform Checks') {
            parallel {
                stage('Terraform Format') {
                    when {
                        expression {
                            return params.RUN_FORMAT_CHECK
                        }
                    }

                    steps {
                        sh 'terraform fmt -check -recursive'
                    }
                }

                stage('Terraform Validate') {
                    when {
                        expression {
                            return params.RUN_VALIDATE
                        }
                    }

                    steps {
                        sh 'terraform validate'
                    }
                }
            }
        }

        stage('Build Info erstellen') {
            steps {
                sh '''
                    echo "Build: $BUILD_NUMBER" > build-info.txt
                    echo "Branch: $BRANCH_NAME" >> build-info.txt
                '''
            }
        }

        stage('Artifact speichern') {
            steps {
                archiveArtifacts artifacts: 'build-info.txt'
            }
        }

        stage('Manual Approval') {
            steps {
                input message: 'Mit der Pipeline fortfahren?'
            }
        }

        stage('Credential prüfen') {
            steps {
                withCredentials([
                    string(
                        credentialsId: 'demo-secret',
                        variable: 'DEMO_SECRET'
                    )
                ]) {
                    sh '''
                        if [ -n "$DEMO_SECRET" ]; then
                            echo "Credential wurde erfolgreich geladen."
                        else
                            echo "Credential konnte nicht geladen werden."
                            exit 1
                        fi
                    '''
                }
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