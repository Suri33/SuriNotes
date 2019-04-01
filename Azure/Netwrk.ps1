# Getting all locations 
$locations = Get-AzLocation | select location 

$curr_loc =  $locations[0].location

$rsg = "mygrp"

$rsg_obj = New-AzResourceGroup -Name $rsg -location $curr_loc 

$vnet = New-AzVirtualNetwork -Name "myvnet" -location $curr_loc -ResourceGroupName $rsg -AddressPrefix "10.10.0.0/16" 

# Subnet Association


Add-AzVirtualNetworkSubnetConfig -Name $subnetone -AddressPrefix "10.10.1.0/24" -VirtualNetwork $vnet 
Add-AzVirtualNetworkSubnetConfig -Name $subnettwo -AddressPrefix "10.10.2.0/24" -VirtualNetwork $vnet

$vnet | Set-AzVirtualNetwork 
