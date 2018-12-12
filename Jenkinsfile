pipeline {
    agent any
    
      parameters {
         string(name: 'tomcat_dev', defaultValue: '13.233.106.236', description: 'Staging Server')
       }
        stages {
            stage('Package the code'){
                steps{
                   sh '/usr/bin/mvn package'
                }       
            }   
            stage ('Deploy') {
                steps{
                   sshagent(credentials : ['1234']) {
                        sh 'ssh -o StrictHostKeyChecking=no root@13.233.106.236 uptime'
                        sh 'ssh -v root@13.233.106.236'
                        sh 'uptime'
                   }
                }
            }
        }
}
