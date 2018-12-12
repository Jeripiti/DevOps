pipeline {
    agent any

	remote.user=root
	remote.password=1234	

    parameters {
         string(name: 'tomcat_dev', defaultValue: '13.233.106.236', description: 'Staging Server')
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
