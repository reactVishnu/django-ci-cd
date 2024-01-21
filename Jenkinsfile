pipeline {
    agent any
    stages {
        stage('Setup Python Virtual ENV for dependencies') {
            steps {
                sh '''
                chmod +x envsetup.sh
                ./envsetup.sh
                '''
            }
        }
        stage('Test Suite') {
            steps {
                sh '''
                chmod +x testrunner.sh
                ./testrunner.sh
                '''
            }
        }
        stage('Setup Gunicorn Setup') {
            steps {
                sh '''
                chmod +x gunicorn.sh
                ./gunicorn.sh
                '''
            }
        }
        stage('Setup NGINX') {
            steps {
                sh '''
                chmod +x nginx.sh
                ./nginx.sh
                '''
            }
        }
    }
}
