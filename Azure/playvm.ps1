# Resource group
$resgrp = New-AzResourceGroup -Name "mygrp" -Location "centralus"

# SubNetConfig
$ subnet1 = New-AzVirtualNetworkSubnetConfig -Name "mysub" -AddressPrefix "10.10.0.0/24"

# VNet
$vnet = New-AzVirtualNetwork -Name "myvnet" -Resourcegroup $resgrp -AddressPrefix "10.10.0.0/16" -Subnet $subnet1
# Get VNet
get-AzVirtualNetwork -Name myvnet -ResourceGroup "mrgrp" 

# Public_Ip
New-AzPublicIpAddress -Name "myip" -ResourceGroupName $resgrp -AllocationMethod "Dynamic"

# NetwrokSecurityGroup
New-AzNetworkSecurityGroup -ResourceGroupName $resgrp -Name "mynsg" 

# SubNet2
$subnet2 = New-AzVirtualNetworkSubnetConfig -Name "subnet2" -AddressPrefix "10.10.1.0/24" 

# Add Subnet to Existing VNet
Add-AzVirtualNetworkSubnetConfig -Name "subnet3" -VirtualNetwrok $vnet  -AddressPrefix "10.10.2.0/24" Set-AzVirtualNetwork 