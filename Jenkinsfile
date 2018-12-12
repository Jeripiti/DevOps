pipeline {
    agent any
    
      parameters {
         string(name: 'tomcat_dev', defaultValue: '13.233.106.236', description: 'Staging Server')
       }
        stages {
            stage('Package the code'){
                steps{
                   sh '/usr/bin/mvn package'
		   sh 'docker build . -t ziyanakthar/newimage:tomcat7'
		   sh 'docker login -u ziyanakthar -p Nasiranaaz'
		   sh 'docker push ziyanakthar/newimage:tomcat7'
                }       
            }   
            stage ('Deploy') {
                steps{
                   sshagent(credentials : ['1234']) {
                        sh 'ssh -o StrictHostKeyChecking=no root@13.233.106.236 docker run -itd --name container-spin ziyanakthar/newimage:tomcat7'
                        sh 'uptime'
                   }
                }
            }
        }
}
