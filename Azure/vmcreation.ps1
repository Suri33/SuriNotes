# Getting Publisher Name = "Canonical"
Get-AzVMImagePublisher -Location "centralus" | where PublisherName -eq "canonical"

# Getting Image Offer  = "Ubuntu Server"
Get-AzVMImageOffer -Location "centralus" -PublisherName "Canonical"

# Getting Image Skus 
Get-AzVMImageSku -Location "centralus" -PublisherName "Canonical" -Offer "UbuntuServer"

# Getting 
