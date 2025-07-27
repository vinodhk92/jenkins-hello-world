pipeline {
    agent any
    tools {
        // Install Maven tool
        maven "M398"
    }
    
    stages {
        stage('Check Maven') {
            steps {
                sh "if ! command -v mvn;then echo 'Maven not found!';exit 1;fi"
            }
        }
        stage('Build') {
            steps {
                sh "mvn clean package -DskipTests=true"
            }
        }
        stage('Unit Test') {
            steps{
                sh "mvn test"
                junit 'target/surefire-reports/TEST-*.xml'
            }
            post {    
               success {
                   archiveArtifacts 'target/*.jar'
                 }
            }
        }
        stage('Containarize image') {
            steps{
                sh 'docker build . -t my-app-image'
                sh 'docker run -d --name my-app-container my-app-image'
            }
        }
    }
}
