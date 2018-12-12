pipeline {
    agent any

	remote.user=root
	remote.password=1234	

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
			sshCommand remote: 13.233.106.236, command: 'top'
                }
            }
        }
}
