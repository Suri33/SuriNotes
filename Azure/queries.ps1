# Getting All VM's
Get-AzVM 

# Getting  only Directories 
Get-ChildItem -Directory -Recurse 

# Getting Only Files
Get-ChildItem -File -Recurse

# Getting Directories & Files  from particular path 
Get-ChildItem -Path E:\awscli\ -File -Recurse -Force
