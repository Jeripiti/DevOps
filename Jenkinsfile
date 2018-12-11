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
                    sh 'scp target/Dockerfile 35.154.25.74:/root;ssh 35.154.25.74;docker build . -t ziyanakthar/ADwebapps:latest && docker login -u ziyanakthar -p Nasiranaaz && docker push ziyanakthar/Adwebapps:latest' 
                }
            }
        }
}
