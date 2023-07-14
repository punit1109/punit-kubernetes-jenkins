pipeline {
    agent any
    parameters {
        string(name: 'name', defaultValue: 'rongoku', description: '')
        string(name: 'podname', defaultValue: 'podrongoku', description: '')
    }
    stages{
        stage('Clone repository'){
            steps{
                git 'https://github.com/punit1109/punit-kubernetes-jenkins.git'
            }
        }
        stage('shell script'){
            steps{
                echo "${params.name}"
                sh ('chmod +x changeValue.sh')
                sh """
                    ./changeValue.sh ${params.podname} ${params.name}
                """
                // sh ('./changeValue.sh flipkart-deploy \"${params.name}\"')
            }
        }
        stage('Deploy to Kubernetes'){
            steps{
                withKubeConfig([credentialsId: 'K8S', serverUrl: '']) {
                    sh ('kubectl apply -f deploy-test.yml')
                    sh ('kubectl apply -f ingress-test.yml')
                }
            }
        }
    }
}
