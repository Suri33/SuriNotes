


# Creating Storage Account 
$rsg = "playing"
$storageaccname = "mystorageinblr"
$sku = "Standard_LRS"
 
New-AzStorageAccount -Location "centralus" -Name $storageaccname -ResourceGroupName $rsg -SkuName $sku 

New-AzStorageAccount -Location "eastus" -Name "storageinhyd" -ResourceGroupName "playing" -SkuName "Standard_LRS"
