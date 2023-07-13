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
                sh ('./changeValues.sh ${params.name} ${params.name}')
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


