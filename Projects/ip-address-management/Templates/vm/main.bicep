param location string
param virtualMachines_Net_Fun_Window_Server_name string
param vmSize string
param adminUsername string
@secure()
param adminPassword string

var vnetName = '${virtualMachines_Net_Fun_Window_Server_name}-vnet'
var subnetName = 'default'
var nsgName = '${virtualMachines_Net_Fun_Window_Server_name}-nsg'
var publicIPName = '${virtualMachines_Net_Fun_Window_Server_name}-ip'
var nicName = '${virtualMachines_Net_Fun_Window_Server_name}284'
var computerName = 'NetFunWinSrv'

resource nsg 'Microsoft.Network/networkSecurityGroups@2023-04-01' = {
  name: nsgName
  location: location
  properties: {
    securityRules: [{
      name: 'RDP'
      properties: {
        protocol: 'Tcp'
        sourcePortRange: '*'
        destinationPortRange: '3389'
        sourceAddressPrefix: '*'
        destinationAddressPrefix: '*'
        access: 'Allow'
        priority: 1000
        direction: 'Inbound'
      }
    }]
  }
}

resource vnet 'Microsoft.Network/virtualNetworks@2023-04-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: { addressPrefixes: ['10.0.0.0/16'] }
    subnets: [{
      name: subnetName
      properties: {
        addressPrefix: '10.0.0.0/24'
        networkSecurityGroup: { id: nsg.id }
      }
    }]
  }
}

resource publicIP 'Microsoft.Network/publicIPAddresses@2023-04-01' = {
  name: publicIPName
  location: location
  properties: {
    publicIPAllocationMethod: 'Dynamic'
    publicIPAddressVersion: 'IPv4'
  }
}

resource nic 'Microsoft.Network/networkInterfaces@2023-04-01' = {
  name: nicName
  location: location
  properties: {
    ipConfigurations: [{
      name: 'ipconfig1'
      properties: {
        privateIPAllocationMethod: 'Dynamic'
        publicIPAddress: { id: publicIP.id }
        subnet: { id: vnet.properties.subnets[0].id }
      }
    }]
  }
}

resource vm 'Microsoft.Compute/virtualMachines@2023-07-01' = {
  name: virtualMachines_Net_Fun_Window_Server_name
  location: location
  properties: {
    hardwareProfile: { vmSize: vmSize }
    osProfile: {
      computerName: computerName
      adminUsername: adminUsername
      adminPassword: adminPassword
      windowsConfiguration: {
        enableAutomaticUpdates: true
        provisionVMAgent: true
      }
    }
    storageProfile: {
      imageReference: {
        publisher: 'MicrosoftWindowsServer'
        offer: 'WindowsServer'
        sku: '2022-datacenter-azure-edition'
        version: 'latest'
      }
      osDisk: {
        name: '${virtualMachines_Net_Fun_Window_Server_name}_OsDisk_1_${uniqueString(resourceGroup().id)}'
        createOption: 'FromImage'
        caching: 'ReadWrite'
        managedDisk: {
          storageAccountType: 'Premium_LRS'
        }
      }
    }
    networkProfile: {
      networkInterfaces: [{ id: nic.id }]
    }
  }
} 