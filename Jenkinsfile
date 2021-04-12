pipeline {
  agent any
  stages {
    stage('Build'){
        steps {
            sh script: 'mvn clean package'
        }
    }
    stage('Upload Jar To Nexus'){
        steps {
            nexusArtifactUploader artifacts: [
                [
                    artifactId: 'restServiceDemo',
                    classifier: '',
                    file: 'target/restServiceDemo-0.0.1-SNAPSHOT.jar',
                    type: 'jar'
                ]
            ],
            credentialsId: 'nexus3',
            groupId: 'com.example',
            nexusUrl: 'http://localhost:8081/',
            nexusVersion: 'nexus3',
            protocol: 'http',
            repository: 'simpleapp-release',
            version: '0.0.1-SNAPSHOT'
        }
    }
  }
}  

