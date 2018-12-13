pipeline {
    agent any
    
      parameters {
         string(name: 'tomcat_dev', defaultValue: '13.232.84.226', description: 'Staging Server')
       }
        stages {
            stage('Package the code'){
                steps{
                   sh '/usr/bin/mvn package'
		   sh 'docker build . -t ziyanakthar/spinning:tominst'
		   sh 'docker login -u ziyanakthar -p Nasiranaaz'
		   sh 'docker push ziyanakthar/spinning:tominst'
                }       
            }   
            stage ('Deploy') {
                steps{
                   sshagent(credentials : ['1234']) {
                        sh 'ssh -o StrictHostKeyChecking=no root@13.232.84.226 docker run -itd --name container-spinning -p 8080:8080 ziyanakthar/spinning:tominst'
                        sh 'uptime'
                   }
                }
            }
        }
}
