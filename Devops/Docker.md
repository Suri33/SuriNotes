  
                 DOCKER && KUBERNETES 
              ----------------------------- 

  Physical Server 
  
   If you build Docker container for your Applications
   
   => containerization 
   
   => Portable 
   
   => MicroServices 
   
   => Monolith ==> Building applications is One unit 
   
   
   Docker Commands ==> 
   
   docker --help 
   docker info 
   docker version
   docker system info 
   
   
   ############31-JAN-2019##################
   
     
	  => docker run hello-world
	  => docker images
	  => 
	  
	  docker exec -it (id/name) /bin/bash

   

 DOCKER FILE =>

FROM ubuntu:18
RUN apt-get update
CMD ["echo","hi"]
 
###############01-FEB-2019#####################


    We need to create Docker Images 
	 
	 TO Create docker images 
	        => Create a container & Take Snapshot of it (NOt recommended)
			=> Dockerfile which we need to create 
			
			
## Contai  Application

* Running your applications in docker container 

   *  
   * 
   Dockerfile 

     docker build -t DriveName . ==> Running Dockerfile 
     Build image ==>  docker image build -t gol:1.0 .

   Run docker container ==> docker container run -d -p 80:8080 gol:1.0    