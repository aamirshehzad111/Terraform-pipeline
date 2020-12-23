pipeline {
    agent any
    options {
        ansiColor('xterm')
    }
    parameters {
          string(defaultValue: 'dev', description: 'Enter the name of Enviornment: dev/prod', name: 'ENV')
          choice(name: 'ACTION', choices: ['Plan','Apply'], description: 'The build type')
    }

    stages {
        stage ('Init') {
            steps {
                sh "cd main && terraform init"                
            }
       } 

        stage ('Plan') {
            when {
                expression { params.ACTION == 'Plan' || params.ACTION == 'Apply'}
            }
            steps {
                sh "cd main && terraform plan -var-file='../config/config.tfvars'"                
            }
       } 

        stage ('Apply') {
            when {
                expression { param.ACTION == 'Apply'}
            }
            steps {
                sh "cd main && terraform apply -var-file='../config/config.tfvars --auto-approve"
            }
       }
    }
    
}