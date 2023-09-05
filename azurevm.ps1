//azure da vm oluştur ve ek disk ekle

$resourceGroup = "myResourceGroup"
$location = "westeurope"
$vmName = "myVM"
$diskName = "myDisk"
$diskLabel = "myDataDisk"
$diskSize = "1023"
$diskSku = "Standard_LRS"

# Create a resource group
New-AzureRmResourceGroup -Name $resourceGroup -Location $location   

## azure da vm oluştur
# Create a new virtual machine, this creates SSH keys if not present.
$vm = New-AzureRmVMConfig -VMName $vmName -VMSize Standard_DS2_v2 |
    Set-AzureRmVMOperatingSystem -Linux -ComputerName $vmName -Credential (Get-Credential) |
    Set-AzureRmVMSourceImage -PublisherName Canonical -Offer UbuntuServer -Skus 16.04-LTS -Version latest |
    Add-AzureRmVMNetworkInterface -Id "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.Network/networkInterfaces/myNic" |
    Set-AzureRmVMBootDiagnostics -Enable -ResourceGroupName $resourceGroup -StorageAccountName "myStorageAccount"




## azure da disk ekle
# Create a new disk
$disk = New-AzureRmDisk -DiskName $diskName -Disk (New-AzureRmDiskConfig -AccountType $diskSku -Location $location -CreateOption Empty -DiskSizeGB $diskSize) -ResourceGroupName $resourceGroup
        