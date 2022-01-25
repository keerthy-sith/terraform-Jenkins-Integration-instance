pipeline{
		    agent any
		    tools {
		        terraform 'TF'
		    }
		    parameters{
                choice(name:'action',choices: ['apply','destroy'],description:'creating and destroy the infra')
            }
            environment{
                AWS_DEFAULT_REGION="us-east-1"
            }
		    stages{
		        stage('Git Checkout'){
		            steps{
		                git credentialsId: '3', url: 'https://github.com/keerthy-sith/terraform-Jenkins-Integration-instance.git'
		            }
		        }
		        stage('Terraform init'){
		            steps{
		                sh label: '',script: 'terraform init'
		            }
		        }
		        stage('Terraform apply'){
		            steps{
		                sh label: '',script: 'terraform "${action}" --auto-approve'
		            }
		        }
		    }    
		}
