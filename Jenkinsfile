pipeline {
    agent any
    
    parameters { 
         string(name: 'tomcat_dev', defaultValue: '13.233.233.113', description: 'Staging Server')
       } 
 
    triggers {
         pollSCM('* * * * *') // Polling Source Control
     }
        stage('Package the code'){
                step(sh 'mvn package')
        }
        stage('Deploy'){
                step(sh 'scp target/*.war 13.127.151.83:/root/apache-tomcat-8.5.35/webapps')
        }
}
