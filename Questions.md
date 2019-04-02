```
Ansible 
Powershell
Azure ARM 
AWS CF 
Terraform 
Docker 
K8S 
```
# Dafault Ports
 ```
   Apache2/Nginx ==> WebSrv   ==> 80
	 Tomcat        ==> AppSrv   ==> 8080 /etc/default/jenkins_config here we can change default Port nums.
	 Jenkins                    ==> 8080
	 ssh => 22
	 rdp => 3389
	 dns => 53
 ```  
	
  GIT ==>
 
```
Find ==> FIND is for searching files and directories at system level.

Grep ==> GREP is for searching a pattern inside a file. 
  
  
  GIT ==>
    git reset --hard ==> deleted files from Working & Staging directory 
	git reset --soft ==> Deletes files only from staging 
	Delete remote repo branches ==> git branch -d remotes/origin/<branchName>
	
   Working Tree ==> Staging Area  ==> Local repo   ==> Remote Repository
   
   git merge --our   ==> getting our commit 
   git merge --their ==> getting their commit 
   

   Delete Files how we will get back in Git  ==> git checkout 
    
   How to delete multiple branches in git ==> git branch -d <branchName>	
```

```   
  DOCKER ==>
 FROM ubuntu:18.04
 RUN apt-get update && apt-get install apache2/nginx -y 
 EXPOSE 80
 CMD ["service","apache2","start"]
 ```
 
 ```
 FROM alpine
 RUN apt-get update && apt-get install tomcat7 -y
 EXPOSE 8080
 CMD ["service","tomcat7","start"]
 ```

 ```
 FROM alpine
 RUN apt-get update && apt-get install default-jdk -y
 ENV JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/"
 RUN apt-get install maven -y
 ENV MAVEN_HOME="/usr/bin/mvn"
 RUN apt-get install tomcat7 -y 
 EXPOSE 8080
 ADD s3://gameoflife.war /var/lib/tomcat7/webapps/ 
 RUN chmod -R 777 /opt/tomcat/tomcat/bin/*
 CMD ["/opt/tomcat/tomcat/bin/catalina.sh","run"]
 ```
 
 
```
  ARM TEMPLATE CORE STRUCTURE 
	
	{
    "$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
    "contentVersion": "",
    "parameters": {  },
    "variables": {  },
    "functions": [  ],
    "resources": [  ],
    "outputs": {  }
    }
	
	CLI ==>
	 az group create –name "armfromcli"
	 az group deployment create –name "depfromcli" –resource-group "armfromcli" -–template-file “myfirstarm.json”
	POWERSHELL ==>
    New-AzResourceGroup –Name "armfromps"
    New-AzResourceGroupDeployment -Name "depfromps" -ResourceGroupName "armfromps" -TemplateFile “myfirstarm.json”  	
```
   
 
``` 
    Terraform  =>
 
 Terraform is a Infra provisioning Tools 
  By using this tools we can create complete environments on any clouds like AWS & Azure

It has  following modules
   => Providers
   => variables 
   => Resources 
   => Connection
   => Provionsers
   => Output
      
	  terraform init .
	  teraform validate .
	  terraform plan .
	  terraform apply .
   
                NACL ==>                                                    Security Group ==>

 => Supports Allow rules only 									=> Supports Allow & Deny rules.
 => Stateful													=> Stateless
 => SG are tied to an instance 									=> NACL are tied to the Subnet
 => First layer or defense                                      => Second layer of defense  		 
 => Firewall of the EC2                                         => Firewall of the Subnet 
```

```
GitToken => Settings => Developer Settings  => Personal Access Tokens => Generate New Token 

    Jenkins Security ==> 
	        
			 Create users in Jenkins.
		jenkins => Manage Jenkins => Manage Users => Create User  
	       Jenkins => Configure Global Security => Matrix based Security  
   Jenkins Log Location ==> /var/log/jenkins/ ==> jenkins.log file is for jenkins log.
  How to change Jenkins port Number =>
    Goto => sudo nano /etc/default/jenkins
JENKINS PLUGINS 

  DeployToContainer  => Deploy .war to particular Location 
  S3 Publisher  => 
  Artifactory =>
  SonarQube Scanner  =>
``` 

```
  Roles in Azure   ==>
  
     1. Web Role
	 2. Worker Role
	 3. VM Role
```	 
	 
```
	  Load Balancers in AWS 
	     => Classic LB
		 => Application LB  (Layer 7)
		 => Network LB (layer 4 )
		 
		 
		Application Load Balancer (7)
		    => http://qt.in/devops
			=> http://qt.in/aws
			
	    Network Layer 4 Protocol port
               => http://qt.in:8080
               => http://qt.in:8084	


        ROUTING  => Path Based 
                 => Host Based 	

        Sticky Sessions => 	
 

     C's name Record => DNS Names
     A's Name Record =>	Ip Address
```

```
   MAVEN LIFE CYCLE ==>
   ---------------------------
validate => validate the project is correct and all necessary information is available
compile  => compile the source code of the project 
test     => test the compiled source code using a suitable unit testing framework. These tests should not require the code be packaged or deployed
package  => take the compiled code and package it in its distributable format, such as a JAR.
verify   => run any checks on results of integration tests to ensure quality criteria are met
install  => install the package into the local repository, for use as a dependency in other projects locally
deploy   => done in the build environment, copies the final package to the remote repository for sharing with other developers and projects   
```    			
				
				
				
				Resume Preparation ==>
			------------------------------------	
				
				Resume Head Line 
				  => 2+ Years of IT experience as Cloud Engineer(MS-Azure & Amazon Web Services) along with DevOps(Jenkins,Ansible,Docker,Terraform,Maven,Git)
		        
				IT Skills =>
                   => MS-Azure 
				   => AWS 
				   => Jenkins
				   => Ansible
				   => Terraform
				   => Docker 
				   => Maven 
				   => Git
				   
				   
				Profile Summary =>
                   => 2+ Years of IT experience as Cloud Engineer(MS-Azure & Amazon Web Services) along with DevOps(Jenkins,Ansible,Docker,Terraform,Maven,Git)
             				   
			    
```
JENKINS PIPELINE ==> 


  node 
    {
  
      stage ('SCM') 
	  {
	  git 'https://github.com/Suri33/game-of-life.git'
	  }
	  
	  stage ('Build packge') 
	  {
            sh 'mvn package'	  
	  }
	   
	   stage ('Artifacory')
	         {
             archiveArtifacts 'gameoflife-core/target/*.jar'             
			 }
	   
	        
		 stage ( 'Sonar Qube')
		 {

         withSonarQubeEnv ('SonarPlaying') 
		    {
		   
             sh ' mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.2:sonar'              
           
		   }					 
	   }
		 
}		
				  
```				  
				
				
				