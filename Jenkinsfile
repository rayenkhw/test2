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
    }
}
