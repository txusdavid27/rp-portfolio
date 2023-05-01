pipeline {
    agent {
        docker {
            image 'mark77_django:latest'
            args '-p 8000:8000'
        }
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/txusdavid27/rp-portfolio.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Lint') {
            steps {
                sh 'pip install pylint'
                sh 'pylint <nombre_del_proyecto>'
            }
        }
        stage('Build and Deploy') {
            steps {
                sh 'docker build -t <nombre_de_la_imagen> .'
                sh 'docker run -d --name <nombre_del_contenedor> -p 8000:8000 <nombre_de_la_imagen>'
            }
        }
    }
}
