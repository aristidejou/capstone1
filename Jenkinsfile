pipeline {
   agent any
   stages {
       stage('one') {
           steps {
               echo "hi my friends n"
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
