pipeline {
   agent any
   stages {
       stage('one') {
           steps {
              echo "${env.BUILD_NUMBER}"
              if (env.BRANCH_NAME=='master'){
                 echo "${env.BRANCH_NAME}"
              }else{
                sh "echo 'it is master it is ${env.BRANCH_NAME} branch!'"
              }
           }
       }
      
      stage('two') {
          steps {
              input('do you want to proceed?')
          }
      }
      
       stage('three') {
           when{
                not {
                      branch "master"
                    }
               }     
          steps {
              echo "hello"
          }
      }
      
       
      
   }
}
