pipeline {
    agent any
    parameters {
        string(name: 'name', defaultValue: 'rongoku', description: '')
        string(name: 'name', defaultValue: 'rongoku', description: '')
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
                sh ('./changeValue.sh flipkart flipkart')
            }
        }
        // stage('Deploy to Kubernetes'){
        //     steps{
        //         withKubeConfig([credentialsId: 'K8S', serverUrl: '']) {
        //             sh ('kubectl apply -f  deploy.yml')
        //         }
        //     }
        // }
    }
}
