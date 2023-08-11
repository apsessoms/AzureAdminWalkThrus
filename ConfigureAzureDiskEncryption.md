# Configure Azure Disk Encryption

Head over to https://www.portal.azure.com and type in Key Vault in ths search bar.

**Remember** we have to have a key vault to store our encryption secret. Even if you are or are not using your own encryption key. 🗝️

![Alt text](image-11.png)

First thing - Key vault is used to store secret information. Think encryption keys, API keys, passwords, etc. 

**Resource Group** Try to follow a good naming schema, because if you are like me..your lab environment is probably pretty messy. 

**Region** For Azure Disk Encryption, it must be in the same region that your Virtual Machine is. 

For the other instance details, you may leave them as is or set them appropriately. 

![Alt text](image-12.png)

On the **Acess configuration** page, we do need to have access to this vault for the purpose of disk encryption. Therefore, select the box that says "Azure Disk Encryption for volume encryption" 

![Alt text](image-13.png)

You can leave the remainder of the congfiguration defaults as it, review your settings, and then click create. Once complete, you should get a message similar to this. 

![Alt text](image-14.png)

Now that the Key Vault has been created, go back the portal and into your virtual machines. (I did start one of my VMS for this walk through, so make sure you have a VM running.)

**Lets now set up Azure Disk Encryption** 

![Alt text](image-15.png)

Then you will click on **additional settings**

![Alt text](image-16.png)

You will see two options.

**1. Encrypt the OS disk**

**2. Encrypt the OS and data disks**

For the purpose of this walk through, we are only going to choose the OS disk because that is all we have. Then we have to choose the key vault. 

![Alt text](image-17.png)

If you do not see the Key Vault you created in the drop down menu, that means your virtual machine and key fault are <u>**not in the same region.**</u>

![Alt text](image-18.png)

You will see there is an option to select a key, but you don't need to. That is an additional key that will encrypt the *encryption secret* that is being stored in your key vault. (For my military friends, you might know this as "KEK"). For everyone else, this is also known is a customer managed key (CMK). 

![Alt text](image-19.png)

If you wanted to use this key mentioned, you will have to enable Azure RBAC configured for Data layer access to this key vault. You can do that by accessing IAM. Click create and once it's complete, you will be able to see your disk is secure in two different ways. 

![Alt text](image-20.png)

It is secure on the server **(SSE)** side which is the data at rest in Microsoft's global infrastructure. 🌍

We also have Azure Disk Encryption **(ADE)** which we enabled in Azure Key Vault. 🗝️