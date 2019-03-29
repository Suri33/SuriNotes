# Getting Storage Account Names belongs to Centralus
  # Get-AzStorageAccount | where location -eq 'centralus' | select Name 

 # $items = Get-ChildItem -File -Recurse *
 # $item = $items[0]
 # echo $item.Name


# Connect-AzAccount 

  # find all the locations from Azure powershell
   $locations  = Get-AzLocation

   $currentlocation = $locations[2]
   $resgrp = "ramrk"
   $loc=  "central us"
echo $currentlocation
 # New-AzResourceGroup -Name $resgrp -Location $loc


 New-AzResourceGroup -Name $resgrp -Location $loc


 #  $resgrp 
  # $loc