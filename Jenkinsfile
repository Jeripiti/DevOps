pipeline {
    agent any
    
      parameters {
         string(name: 'tomcat_dev', defaultValue: '3.16.155.104', description: 'Staging Server')
       }
        stages {
            stage('Package the code'){
                steps{
                   sh '/usr/bin/mvn package'
		   sh 'docker build . -t ziyanakthar/spinning-dec:tominst'
		   sh 'docker login -u ziyanakthar -p Nasiranaaz'
		   sh 'docker push ziyanakthar/spinning-dec:tominst'
                }       
            }   
            stage ('Deploy') {
                steps{
                   sshagent(credentials : ['1234']) {
                        sh 'ssh -o StrictHostKeyChecking=no 3.16.155.104 docker run -itd --name container-spinning -p 8080:8080 ziyanakthar/spinning-dec:tominst'
                        sh 'uptime'
                   }
                }
            }
        }
}
