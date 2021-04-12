pipeline {
  agent any
  tools {
    maven 'maven3'
  }
  stages {
    stage('Build'){
        steps {
            sh script: 'mvn clean package'
        }
    }
    stage('Upload Jar To Nexus'){
        steps {
            sh script: 'mvn clean package'
        }
  }
}  

