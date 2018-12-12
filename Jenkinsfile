pipeline {
    agent any
    
      parameters {
         string(name: 'tomcat_dev', defaultValue: '13.233.106.236', description: 'Staging Server')
       }
        stages {
            stage('Package the code'){
                steps{
                   sh '/usr/bin/mvn package'
		   sh 'docker build . -t newimage:tomcat'
		   sh 'docker login -u ziyanakthar -p Nasiranaaz'
		   sh 'docker push -t newimage:tomcat'
                }       
            }   
            stage ('Deploy') {
                steps{
                   sshagent(credentials : ['1234']) {
                        sh 'ssh -o StrictHostKeyChecking=no root@13.233.106.236 docker run -itd --name container-2 -p 8081:8081 ziyanakthar/newimage:tomcat'
                        sh 'ssh -v root@13.233.106.236'
                        sh 'uptime'
                   }
                }
            }
        }
}
