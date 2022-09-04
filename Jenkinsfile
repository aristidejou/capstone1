pipeline {
   agent any
   stages {
       stage('one') {
                     when {
                             expression { env.BRANCH_NAME != 'master'}
                        echo "develop"
                       }
           steps {
              echo "${env.BRANCH_NAME}"
             
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
