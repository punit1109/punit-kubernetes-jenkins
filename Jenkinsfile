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
                def kubeconfig = readFile('kubeconfig')
                sh "kubectl --kubeconfig=${kubeconfig} apply -f deploy.yml.yaml"
            }
        }
    }
}
