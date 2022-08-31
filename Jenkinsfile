pipeline {
    agent any
    environment
    {
        dockerImage = ''
        registry = 'ppdocker2018/flaskimage'
        registryCredential='009e639d-7a16-45d8-a83d-c77322cfce33'
    }
    stages {
        stage('Clone repository')
        {
            steps {
                git branch: 'main', credentialsId: '94a76883-0af0-4b0f-8275-85132ab3e864', url: 'https://github.com/paresh2020/flask_project.git'
            }
        }
        stage('Build docker image')
        {
            steps {
                script 
                {
                    dockerImage = docker.build registry
                }
                
            }
        }
        
        stage('Load docker image')
        {
            steps {
                script 
                {
                    docker.withRegistry('',registryCredential)
                    {
                        dockerImage.push()
                    }
                    
                }
                
            }
        }

    }
}