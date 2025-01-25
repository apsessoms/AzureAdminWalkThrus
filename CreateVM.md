# Create a Virtual Machine using Bicep

This guide will walk you through the steps to create a virtual machine (VM) in Azure using Bicep.

## Prerequisites

- An Azure account with an active subscription.
- Azure CLI installed. You can install it from [here](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli).
- Bicep CLI installed. You can install it from [here](https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/install).
- Your preferred Integrated Development Environment (IDE). I will be using Visual Studio Code.

## Step 1: Sign in to Azure

Open a powershell terminal and sign in to Azure using the Azure CLI:

```sh
az login
```

## Step 2: Create a Resource Group

Create a resource group with the following command:

```sh
az group create --name myResourceGroup --location eastus
```

## Step 3: Create a Bicep File

Create a new file named `main.bicep` and add the following content to define the VM:

```bicep
param location string = 'eastus'
param vmName string = 'myVM'
param adminUsername string = 'azureuser'
param adminPassword string = 'P@ssw0rd1234'

resource vm 'Microsoft.Compute/virtualMachines@2021-03-01' = {
  name: vmName
  location: location
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_DS1_v2'
    }
    osProfile: {
      computerName: vmName
      adminUsername: adminUsername
      adminPassword: adminPassword
    }
    storageProfile: {
      imageReference: {
        publisher: 'MicrosoftWindowsServer'
        offer: 'WindowsServer'
        sku: '2019-Datacenter'
        version: 'latest'
      }
      osDisk: {
        createOption: 'FromImage'
      }
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: nic.id
        }
      ]
    }
  }
}

resource nic 'Microsoft.Network/networkInterfaces@2021-02-01' = {
  name: '${vmName}-nic'
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig1'
        properties: {
          subnet: {
            id: subnet.id
          }
          privateIPAllocationMethod: 'Dynamic'
        }
      }
    ]
  }
}

resource vnet 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  name: '${vmName}-vnet'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: ['10.0.0.0/16']
    }
    subnets: [
      {
        name: 'default'
        properties: {
          addressPrefix: '10.0.0.0/24'
        }
      }
    ]
  }
}

resource subnet 'Microsoft.Network/virtualNetworks/subnets@2021-02-01' existing = {
  parent: vnet
  name: 'default'
}
```

## Step 4: Deploy the Bicep File

Deploy the Bicep file using the Azure CLI:

```sh
az deployment group create --resource-group myResourceGroup --template-file main.bicep
```

## Step 5: Verify the Deployment

Verify that the VM has been created by navigating to the Azure portal and checking the resource group.

Congratulations! You have successfully created a virtual machine using Bicep.