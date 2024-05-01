pipeline {
    agent any

    environment {
        // Set Docker Hub credentials ID
        DOCKER_CREDENTIALS = 'docker'
        // Set Docker image name
        DOCKER_IMAGE = 'deepak236/dictionary-app:latest'
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from GitHub repository
                git 'https://github.com/DeepakRajjj/Docker-ci-cd.git'
            }
        }

        stage('Build') {
            steps {
                // Build Docker image
                script {
                    docker.build(DOCKER_IMAGE)
                }
            }
        }

        stage('Push') {
            steps {
                // Push Docker image to Docker Hub
                script {
                    docker.withRegistry('https://registry.hub.docker.com', DOCKER_CREDENTIALS) {
                        docker.image(DOCKER_IMAGE).push('latest')
                    }
                }
            }
        }
    }

    post {
        always {
            // Clean up workspace
            cleanWs()
        }
    }
}
