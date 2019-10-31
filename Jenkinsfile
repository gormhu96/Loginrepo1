node
{
    cleanWs()
    def url_base = 'https://github.com/gormhu96/Loginrepo1';
    def sonar_url = 'http://localhost:9000';
    def sonar_token = 'bfd0736aef7524cbb3c80ef750f9525e4fe9a44c';
//    def container_registry = 'https://134219192027.dkr.ecr.us-east-1.amazonaws.com'
//    def image_name = '134219192027.dkr.ecr.us-east-1.amazonaws.com/reto-tpo/service-clientes';
    def branch_name = 'master';
    def command_sonar = mvn sonar:sonar -Dsonar.host.url= sonar_url -Dsonar.login= sonar_token
    def command_compile = 'mvn clean install'
    def nexus_url = 'http://localhost:8081/repository/Loginrepo1/'
//    def command_build_image = 'docker build -t 134219192027.dkr.ecr.us-east-1.amazonaws.com/reto-tpo/service-clientes \
//                                                -f docker/Dockerfile \
//                                                . '
    
//     def command_deploy = 'ssh ec2-user@ec2-13-58-105-46.us-east-2.compute.amazonaws.com:deploy_service.sh'

	stage('Checkout'){
	    checkout scm
	}
	stage("Build"){
	    withMaven(maven: 'maven 3.6'){
            sh command_compile
	    }
	}
//	stage("Image Build"){
//      sh command_build_image
//	}
//	stage("Upload Image"){
//        docker.withRegistry(container_registry, 'ecr:us-east-1:AWS-reto') {
//            docker.image(image_name).push()
//        }
//	}
//        stage("Upload repository")
//        {
//	sh "curl --fail -u admin:admin123 --upload-file target/ApiLogin-0.0.1-SNAPSHOT.jar $nexus_url"
//	}
        stage("Code Analysis")
        {
        sh command_sonar
        }
        stage("Deploy Service"){
	    sshagent(credentials : ['ssh-service.reto-mch.name']) 
	        //sh 'scp docker/deploy_service.sh ec2-user@ip-172-31-85-245.ec2.internal:deploy_service.sh'
	        //sh 'ssh -o StrictHostKeyChecking=no ec2-user@ip-172-31-85-245.ec2.internal chmod 750 deploy_service.sh'
            //sh 'ssh -o StrictHostKeyChecking=no ec2-user@ip-172-31-85-245.ec2.internal ./deploy_service.sh'
		sh:"docker-compose up"
        }
	}
}
