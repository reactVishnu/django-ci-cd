pipeline{
    agent any
    stages {

        stage('Setup Python Virtual ENV for dependencies'){

      steps  {
            sh '''
            chmod +x envsetup.sh
            ./envsetup.sh
            '''}
        }
        stages {

        stage('Test Suite'){

      steps  {
            sh '''
            python3 your_project/manage.py test
            '''}
        }
        stage('Setup Gunicorn Setup'){
            steps {
                sh '''
                chmod +x gunicorn.sh
                ./gunicorn.sh
                '''
            }
        }
        stage('setup NGINX'){
            steps {
                sh '''
                chmod +x nginx.sh
                ./nginx.sh
                '''
            }
        }
    }
}