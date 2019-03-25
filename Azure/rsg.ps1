# Creating Location,Resourcegroup
$loc = "centralus"
$rsgname = "second"
$storageaccname = "suristorageinhyd"
$sku = "Standard_LRS"


# New-AzResourceGroup -Name $rsg -Location $loc 

New-AzStorageAccount -ResourceGroupName $rsgname -Name $storageaccname -SkuName $sku -Location $loc 

# Deleting Resource Group 
# Remove-AzResourceGroup -Name $rsgname -force 

# Deleting Particular ResourceGroup
 Get-AzResourceGroup -Name "playing" | Remove-AzResourceGroup -Force -Verbose







