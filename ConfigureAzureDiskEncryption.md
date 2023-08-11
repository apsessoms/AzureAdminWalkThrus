# Configure Azure Disk Encryption: A Step-by-Step Guide

This guide walks you through the process of configuring Azure Disk Encryption, ensuring that your data remains secure.

## Prerequisites

- An active Azure Subscription.
- An existing Virtual Machine (VM) in your Azure environment.

## Step 1: Access Key Vault

1. Go to [Azure Portal](https://www.portal.azure.com).
2. Search for "Key Vault" in the search bar.

**Note**: You must have a Key Vault to store your encryption secret, whether you are using your own encryption key or not. 🗝️

## Step 2: Create Key Vault

Key Vault is used to store secret information like encryption keys, API keys, passwords, etc.

1. **Resource Group**: Follow a good naming schema to keep your environment organized.
2. **Region**: Ensure it's in the same region as your Virtual Machine for Azure Disk Encryption.

![Key Vault Settings](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/801efd54-0430-49ed-be42-2cb47da7a159)

3. Configure other instance details as needed or leave them as default.

## Step 3: Access Configuration

1. On the "Access configuration" page, select "Azure Disk Encryption for volume encryption."

![Access Configuration](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/ddf9c5cc-6709-4671-bb6b-ac41d48ef867)

2. Leave the rest of the configuration as default, review your settings, and click "Create."

## Step 4: Verify Key Vault Creation

Once complete, you should receive a confirmation message.

![Key Vault Created](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/2176a187-1141-45eb-b03f-bdc6715560a8)

## Step 5: Set Up Azure Disk Encryption

1. Return to the portal and navigate to your virtual machines (ensure your VM is running).
2. Click on **additional settings**.

![Additional Settings](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/ba1a7b6e-5521-4daa-abce-a485e8260c83)

3. Choose between:
   - **Encrypt the OS disk**.
   - **Encrypt the OS and data disks** (for this walkthrough, choose the OS disk only).

4. Select the Key Vault.

![Select Key Vault](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/b7e0781e-cb36-4acd-b157-8192f5130202)

   **Important**: If the Key Vault isn't visible, your virtual machine and Key Vault are **not in the same region**.

5. Optional: Select an additional key if you want to encrypt the encryption secret stored in your Key Vault (known as a customer managed key, or CMK).

![Additional Key](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/2cc9aceb-a61a-4242-aa31-385f66a8d80d)

6. Click "Create," and once complete, you can verify that your disk is secure.

![Disk Secure](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/160a1073-9858-4a90-bab5-6719dcedeece)

### Security Layers:

- **Server Side Encryption (SSE)**: Data at rest in Microsoft's global infrastructure. 🌍
- **Azure Disk Encryption (ADE)**: Enabled in Azure Key Vault. 🗝️

---

Feel free to let me know if there are any specific changes or additional details you would like to include!
