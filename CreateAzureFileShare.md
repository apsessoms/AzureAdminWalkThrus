# Create an Azure File Share and connect to it from Windows Remote Desktop Connection

## Prerequisites

- [Azure Account](https://azure.microsoft.com/en-us/free/)
- [Azure Storage Account](https://docs.microsoft.com/en-us/azure/storage/common/storage-account-create?tabs=azure-portal)

## Step 1: Go to Storage Account & Create File Share

Make sure you are in the correct subscription and resource group. Then go to your storage account and create a file share. Browser into "Storage browser" and you should only 
see File Shares available. Click on the "+" button to create a new file share. Give it a name, specifcy capacity, and depending on what OS you are using, you can specify the protocol. For this example, we will use SMB.

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/9114162b-38d6-4aa8-afab-ccceb7c6f8ca)


**Remember, you can choose the protocol only if you have a premium storage account. If you have a standard storage account, you will only be able to use SMB.**

For other non-premium storage accounts, you can configure the file share following these steps:

1. Go to your storage account (it will be a general purpose storage account and click the + button to create a new file share.)

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/2d89e0a8-eecc-479d-a1a7-f166c480faf3)


What you will notice is that you can't configure the provision capacity or the protocol. This is because you are using a standard storage account. 

You can however, pick one of the three other storage tiers.

1. Transaction Optimized (Standard File Shares)
2. Hot (Standard File Shares)
3. Cool (Standard File Shares)

Click create and wait for the file share to be created.

## Step 2: Connect to the File Share

Go back into your storage account you made and click on the file share where you should see a screen like this:

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/5bc84f88-e2d8-4b1a-8c8e-c8c0d3fc974f)


This is where you can create a folder hierarchy and upload files. You can also connect to the file share from your local machine. This is what is supported when you use Azure Files. You can set the quota for the file share and also set the access tier. The only thing that you can't do is change it the premium, because it will have to be created as a premium storage account. 

**Connecting to the file share from your local machine**

Click on Connect and you will see a screen like this:

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/2bcf8cab-b569-47e6-9978-776ecf5bdbf1)


We will connect to the storage account using a Storage account key using a script that microsoft provides for us. I already have a virtual machine running in Azure, so I will use that to connect to the file share. Copy the script and run it in powershell. This will map the file share to your local machine. If the script runs successfully, you should see a screen like this:

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/cc8dd49f-7a4e-451d-8233-ae477d81003d)


You can now go to your local machine and see the file share mapped to your machine. Let's click on file explorer and see what we have. 

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/3f21847b-7257-493e-93b2-2d4d048021d5)


As you can see, there is the file share that we created. You can create folders here and share it with other people. 

 In summary, we created a file share in Azure and connected to it from our local machine. We also saw how to create a file share in a standard storage account and a premium storage account. 
  
