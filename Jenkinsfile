pipeline {
    agent any
    environment {
       AWS_INFRA_PATH="aws-infra"
    }
    stages {

        stage("terraform init") {
            steps {
                dir("${AWS_INFRA_PATH}"){
                    sh "terraform init"
                }
            }
        }
        stage("terraform validate") {
            steps {
                dir("${AWS_INFRA_PATH}"){
                    sh "terraform validate"
                }
            }
        }
        stage("terraform plan") {
            steps {
                dir("${AWS_INFRA_PATH}"){
                    sh "terraform plan "
                }
            }
        }
        stage("terraform apply") {
            steps {
                dir("${AWS_INFRA_PATH}"){
                    sh "terraform apply --auto-approve "
                }
            }
        }
    }
}