pipeline {
   agent any
   stages {
       stage('one') {
           steps {
              echo '$BUILD_NUMBER'
               echo "hi my friendssdsd noe"
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
