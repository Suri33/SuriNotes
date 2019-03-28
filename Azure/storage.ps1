


# Creating Storage Account 
$rsgname = "storageplaying" 
$loc = "eastus"
$storageone = "mystorageinnlr"
$storagetwo ="mystorageinhyd"
$storagethree= "mystorageinblr"
$storagefour = "mystorageinchn"
$sku = "Standard_LRS"

# Creating ResourceGroup
New-AzResourceGroup -Name $rsgname -Location $loc 
New-AzStorageAccount -Location $loc -Name $storageone -ResourceGroupName $rsgname -SkuName $sku
New-AzStorageAccount -Location $loc -Name $storagetwo -ResourceGroupName $rsgname -SkuName $sku
New-AzStorageAccount -Location $loc -Name $storagethree -ResourceGroupName $rsgname -SkuName $sku
New-AzStorageAccount -Location $loc -Name $storagefour -ResourceGroupName $rsgname -SkuName $sku

# Remove All Storage Account in OneShot 
# Get-AzStorageAccount | Remove-AzStorageAccount 


# New-AzStorageAccount -Location "eastus" -Name "storageinhyd" -ResourceGroupName "playing" -SkuName "Standard_LRS"


