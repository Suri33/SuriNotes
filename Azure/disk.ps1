# Configuring Disk 

$diskconfig = New-AzDiskConfig -Location 'Central US' -DiskSizeGB 5 -AccountType "Standard_LRS" -OsType "Windows" -CreateOption "Empty" -EncryptionSettingsEnabled $true

# Creating Disk
New-AzDisk -ResourceGroupName 'rk' -DiskName 'RkDisk' -Disk $diskconfig
