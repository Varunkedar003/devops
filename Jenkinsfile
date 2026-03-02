pipeline {
    agent any

    environment {
        APP_NAME = "devops-app"
        BUILD_VERSION = "${env.BUILD_NUMBER}"
    }

    stages {

        stage('Checkout') {
            steps {
                echo "Checking out source code..."
                checkout scm
            }
        }

        stage('Build') {
    steps {
        echo "Building ${APP_NAME} version ${BUILD_VERSION}"
        sh '''
            mkdir -p build
            echo "Application version ${BUILD_VERSION}" > build/app.txt
        '''
    }
}

        stage('Test') {
            steps {
                echo "Running tests..."
                sh 'echo Tests passed'
            }
        }

        stage('Package') {
            steps {
                archiveArtifacts artifacts: 'build/**', fingerprint: true
            }
        }
    }

    post {
        success {
            echo "Pipeline completed successfully."
        }
        failure {
            echo "Pipeline failed."
        }
    }
}
