# Creating Location,Resourcegroup
$loc = "centralus"
$rsgname = "playing"
$storageaccname = "suristorageinhyd"
$sku = "Standard_LRS"


# New-AzResourceGroup -Name $rsg -Location $loc 

New-AzStorageAccount -ResourceGroupName $rsgname -Name $storageaccname -SkuName $sku -Location $loc 




