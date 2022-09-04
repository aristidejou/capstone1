pipeline {
   agent any
   stages {
       stage('one') {
           steps {
            
               echo "hi my friend"
               """
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
      
       stage('four') {
          steps {
             parallel {
             stage('unit test') {
                               steps {
                               echo "running the unit test...."
                               }
             
             }
             stage('integration test'){
                                    agent {
                                    docker {
                                         reuseNode false
                                         image 'ubuntu'
                                    }
                                    }
                                    steps{
                                    echo 'running the integration test...'
                                    }
             }
             }
          }
      }
   }
}
