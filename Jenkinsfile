pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        // Descargar el proyecto desde el repositorio
        git 'https://github.com/txusdavid27/devOpsPractice.git'

        // Construir la imagen del contenedor
        sh 'docker build -t myapp .'
      }
    }
    stage('Lint') {
      steps {
        // Ejecutar el linter pylint sobre el proyecto completo
        sh 'pylint devOpsPractice'
      }
    }
    stage('Deploy') {
      steps {
        // Desplegar la aplicación en un contenedor independiente
        sh 'docker run -d -p 5000:5000 myapp'
      }
    }
  }
}

