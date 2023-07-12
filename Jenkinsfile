pipeline {
    agent any
    stages{
        stage('Clone repository'){
            steps{
                git 'https://github.com/punit1109/punit-kubernetes-jenkins.git'
            }
        }
        stage('Deploy to Kubernetes'){
            steps{
                withKubeConfig([credentialsId: 'K8S', serverUrl: '']) {
                    sh ('pwd')
                    sh ('kubectl apply -f  deploy.yaml')
                }
            }
        }
    }
}


