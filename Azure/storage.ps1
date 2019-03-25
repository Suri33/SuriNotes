


# Creating Storage Account 
$rsgname = "two" 
$loc = "eastus"
$storageaccname = "mystorageinnlr"
$sku = "Standard_LRS"

# Creating ResourceGroup
# New-AzResourceGroup -Name $rsgname -Location $loc 
New-AzStorageAccount -Location $loc -Name $storageaccname -ResourceGroupName $rsgname -SkuName $sku

# Remove All Storage Account in OneShot 
# Get-AzStorageAccount | Remove-AzStorageAccount 


# New-AzStorageAccount -Location "eastus" -Name "storageinhyd" -ResourceGroupName "playing" -SkuName "Standard_LRS"


