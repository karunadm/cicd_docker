pipeline {
    agent any
 
   stages {
      stage('Docker Build and Tag') {
           steps {
              
                sh 'cd /home/ubuntu/hello-world-war'
                sh 'docker build -t samplecicd:latest .' 
                sh 'docker tag samplecicd dmkaruna/testkrepo:latest'
                              
          }
        }
     
      stage('Publish image to Docker Hub') {
          
            steps {
          withDockerRegistry([ credentialsId: "dockerHub", url: "" ]) {
          sh  'docker push dmkaruna/testkrepo:latest'
                }
                  
          }
        }
     
      stage('Run Docker container on Jenkins Agent') {
             
            steps {
                sh "docker run -d -p 8003:8080 dmkaruna/testkrepo"
 
            }
        }
 
    }
 }
