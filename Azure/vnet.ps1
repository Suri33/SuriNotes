
$rsg = "three"
$loc = "westus"
$vnetname = "threevnet"
$subnetname = "threesn"

# Creating ResourceGroup
 New-AzResourceGroup -Name $rsg -Location $loc 

# Creating Vnet 
 $vnet = New-AzVirtualNetwork  -ResourceGroupName $rsg -Location $loc -Name $vnetname -AddressPrefix "10.10.0.0/16" 

 # Subnet assocaiation 

 Add-AzVirtualNetworkSubnetConfig -Name $subnetname -AddressPrefix "10.10.0.0/24" -VirtualNetwork $vnet 

 $vnet | Set-AzVirtualNetwork 

 # Getting Vnet Details 
  Get-AzVirtualNetwork | select Name,Subnets,Location,ResourceGroupName
