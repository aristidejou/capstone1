pipeline {
   agent any
   stages {
       stage('one') {
                    
           steps {
              withEnv(['BRANCH_NAME="master"']) {
              echo "master"
              }
             
           }
       }
      
      stage('two') {
          steps {
              input('do you want to proceed?')
          }
      }
      
      stage('Hello') {
            steps {
                script {
                    if (env.BRANCH_NAME == 'main') {
                        echo 'Hello from main branch'
                    }  else {
                        sh "echo 'Hello from ${env.BRANCH_NAME} branch!'"
                    }
                    }
            }
        }
      
       
      
   }
}
