
$rsg = "vnetplaying"
$loc = "westus"
$vnetname = "playvnet"
$subnetone = "firstsn"
$subnettwo = "secondsn"
$subnetthree = "threesn"
$subnetfour = "foursn"


# Creating ResourceGroup
 New-AzResourceGroup -Name $rsg -Location $loc 

# Creating Vnet 
 $vnet = New-AzVirtualNetwork  -ResourceGroupName $rsg -Location $loc -Name $vnetname -AddressPrefix "10.10.0.0/16" 

 # Subnet assocaiation 
 Add-AzVirtualNetworkSubnetConfig -Name $subnetone -AddressPrefix "10.10.1.0/24" -VirtualNetwork $vnet 
 Add-AzVirtualNetworkSubnetConfig -Name $subnettwo -AddressPrefix "10.10.2.0/24" -VirtualNetwork $vnet
 Add-AzVirtualNetworkSubnetConfig -Name $subnetthree -AddressPrefix "10.10.3.0/24" -VirtualNetwork $vnet
 Add-AzVirtualNetworkSubnetConfig -Name $subnetfour -AddressPrefix "10.10.4.0/24" -VirtualNetwork $vnet

 $vnet | Set-AzVirtualNetwork 

# Getting Vnet Details 
# Get-AzVirtualNetwork | select Name,Subnets,Location,ResourceGroupName