# Creating Resource Group
$ rg = New-AzureRmResourceGroup -Name 'surips' -Location 'Central US'

# Get Resource Group 
Get-AzureRmResourceGroup -Name  'surips' 

# using Sort,Format-table
Get-AzureRmResourceGroup | Sort Location,ResourceGroupName |Format-Table 

Get-AzureRmResoruceGroup | Where ResourceGroupName -like suri*

# creating Subnet 

$ websub = New-AzureRmVirtualNetworkSubnetConfig -Name "Web" -AddressPrefix "10.10.0.0/24"
$ datasub = New-AzureRmVirtualNetworkSubnetConfig -Name "Datasub" -AddressPrefix "10.10.1.0/24"

# Creating Virtual network 

$ vnet = New-AzureRmVirtualNetwork -Name "suriVNet" -ResourceGroupName "Surips" -Location "centralus" -AdressPrefix " 10.10.0.0/16" -Subnet $websub,$datasub


# Getting virtualNetwork
Get-AzureRmVirtualNetwork -Name "suriVNet" -ResourceGroupName "surips"


$ bussub = New-AzureRmVirtualNetworkSubnetConfig -Name "Bussub" -AddressPrefix "10.10.2.0/24"
$ mgtsub = New-AzureRmVirtualNetworkSubnetConfig -Name "Mgtsub" -AddressPrefix "10.10.3.0/24"


Add-AzureRmVirtualNetworkSubnetConfig -Name "backendSubnet" -VirtualNetwork $virtualNetwork -AddressPrefix "10.10.2.0/24"
    $vnet | Set-AzureRmVirtualNetwork


 # Network Security Group 
 
 az netwrok nsg create -n surisng -g suri

 # Network deleted 

 az network nsg delte -n surisng -g suri 

 #  Add Nsg Rules

 az network nsg rule create -g suri -n rule1 --nsg-name surinsg --priority 300 
