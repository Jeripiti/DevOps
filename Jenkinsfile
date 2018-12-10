pipeline {
    agent any
    
    parameters { 
         string(name: 'tomcat_dev', defaultValue: '13.233.233.113', description: 'Staging Server')
       } 
        stages {
            stage('Package the code'){
                steps{
                   sh '/usr/bin/mvn package'
                }
            }
            stage('Deploy'){
                steps{
                    sh 'scp target/*.war 13.127.151.83:/root/apache-tomcat-8.5.35/webapps'
                }
            }
        }
}
