# Resource Group
$resgrp = New-AzureRmResourceGroup -Name "mygrp" -Location "centralus"

# Storage Account
New-AzureRmStorageAccount -ResourceGroupName $resgrp -Name 