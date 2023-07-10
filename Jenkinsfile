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
                script{
                    def kubeconfig = readFile('kubeconfig')
                    sh "/usr/local/bin/kubectl --kubeconfig=${kubeconfig} apply -f deploy.yml.yaml"
                }
            }
        }
    }
}
