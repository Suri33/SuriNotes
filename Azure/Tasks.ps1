# Getting Storage Account Names belongs to Centralus
  # Get-AzStorageAccount | where location -eq 'centralus' | select Name 

$items = Get-ChildItem -File -Recurse *
$item = $items[0]
echo $item.Name