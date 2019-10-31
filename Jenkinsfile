node
{
    cleanWs()
    def url_base = 'https://github.com/gormhu96/Loginrepo1';
    def sonar_url = 'http://localhost:9000';
    def sonar_token = 'bfd0736aef7524cbb3c80ef750f9525e4fe9a44c';
    def command_sonar = mvn sonar:sonar -Dsonar.host.url= sonar_url -Dsonar.login= sonar_token;
    def command_compile = 'mvn clean install';
    def nexus_url = 'http://localhost:8081/repository/Loginrepo1/';
    
	stage("Download files"){
	checkout scm
	}
	stage("Build/compile"){
        sh command_compile
	}
        stage("Code Analysis")
        {
        sh command_sonar
        }
        stage("Deploy Service"){
	sh docker-compose up
	}
}
