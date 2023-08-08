pipeline {
    agent any
    stages {
        stage("Clone Git Repository") {
            steps {
                git(
                    url: "https://github.com/rayenkhw/test2.git",
                    branch: "terraformtest",
                    changelog: false,
                    poll: false
                )
            }
        }
        
         stage("terraform1") {
            steps {
                
                sh "terraform apply -auto-approve"
                sh "terraform init"
                sh "terraform plan"
                sh "terraform apply -auto-approve"
                sh "git commit -m 'Add testfile from Jenkins Pipeline'"
            }
        }
        
    }
}
