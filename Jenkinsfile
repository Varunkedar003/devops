pipeline {
    agent any

    environment {
        IMAGE_NAME = "devops-app"
        IMAGE_TAG = "${BUILD_NUMBER}"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t ${IMAGE_NAME}:${IMAGE_TAG} ."
            }
        }

        stage('List Images') {
            steps {
                sh "docker images"
            }
        }
    }
}
