pipeline {
    agent any
    stages{
        stage('Clone repository'){
            steps{
                sh ('git clone https://github.com/punit1109/punit-kubernetes-jenkins.git')
            }
        }
        stage('Deploy to Kubernetes'){
            steps{
                withKubeConfig([credentialsId: 'K8S', serverUrl: '']) {
<<<<<<< HEAD
                    sh ('kubectl apply -f  deploy.yaml')
=======
                    sh ('pwd')
                    sh ('cd punit-kubernetes-jenkins')
                    sh ('pwd')
                    sh ('ls')
                    sh ('kubectl apply -f  deploy.yml')
>>>>>>> 22cdc6a18bd3bf18cfacc5e8a75afeec849becda
                }
            }
        }
    }
}


