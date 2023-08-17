pipeline {
    agent any
    stages {
        stage("Git") {
            steps{
                git(
                    url: "https://github.com/rayenkhw/test2.git",
                    branch: "terraformtest",
                    changelog: false,
                    poll: false
                )
            }
            }
        
        
         stage("terraform") {
            steps {
                sh "terraform init"
                sh "terraform plan"
                sh "terraform apply -auto-approve"
                
            }
        }
        stage("ansible") {
            steps {
                sh "cat pass.txt | ansible all -m ping -v -k"
                
                
                sh"git add ."
                sh "git commit -m 'Add testfile from Jenkins Pipeline'"
            }
        }
    }
        
    
}
