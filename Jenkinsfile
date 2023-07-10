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
                    sh 'curl -LO "https://storage.googleapis.com/kubernetes-release/release/v1.20.5/bin/linux/amd64/kubectl"'
                    sh 'chmod u+x ./kubectl'
                    sh './kubectl get pods'
                    sh "./kubectl --kubeconfig=${kubeconfig} apply -f deploy.yml.yaml"
                }
            }
        }
    }
}
