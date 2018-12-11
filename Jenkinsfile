pipeline {
    agent any

    parameters {
         string(name: 'tomcat_dev', defaultValue: '35.154.25.74', description: 'Staging Server')
       }
        stages {
            stage('Package the code'){
                steps{
                   sh '/usr/bin/mvn package'
                }
            }
            stage('Deploy'){
                steps{
                    sh 'scp target/Dockerfile 35.154.25.74:/root;sshpass -p "1234" root@35.154.25.74 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "docker build . -t ziyanakthar/ADwebapps:latest && docker login -u ziyanakthar -p Nasiranaaz && docker push ziyanakthar/Adwebapps:latest"' 
                }
            }
        }
}
