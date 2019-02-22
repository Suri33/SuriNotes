
 ##  Introduce Images ,Registry & Containers 

 We need to create Docker Images 
 To create Docker Images 
     => Create a container & Take the snapshot of it ( not recommended)
     => Dockerfile which we need to create 

 ## How it works 
      

  => Cgroups,Namespaces works for Creating container 

      Client  => Daemon  => Container D => oci 

    ## NameSpaces 
    NameSpaces ==> Isolations are created using NameSpaces
    Cgroup ==> Resource limits are imposed by cgroups 


    Components ==>

          Client => docker cmd line 
          daemon 
          containerd
          runc 
          compute service 

  ## Windows Containers 
      
     => native containers 
     => hyperv isolatuions ==. Security Benifitd & Linux containers to run 

  ## Writing Docker Files
       => Need to know how to  install/configure the application manually     

     => Ubuntu Sevver ==> I want to install apache server 
     => sudo apt-get udpdate 
     => sudo apt-get install apache2 -y 

         
          FROM ubuntu:18
          RUN apt-get update && apt-get install apache2 -y 
          CMD 
                       



