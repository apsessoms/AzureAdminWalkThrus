# Configure a Custom Azure RBAC Role: A Step-by-Step Guide

This guide explains how to create a custom Role-Based Access Control (RBAC) role in Azure using a definition stored in a JSON file.

## Prerequisites

- An active Azure Subscription.
- A JSON file with the custom role defined.

## Step 1: Access Azure Portal

1. Log in to the [Azure Portal](https://portal.azure.com).
2. Open an Azure CLI PowerShell session.

## Step 2: Upload JSON File

1. Upload the JSON file containing your custom role within the PowerShell session.

   ![Upload JSON File](https://github.com/apsessoms/AzureCustomRBACRole/assets/99392512/c07edc4f-6223-4891-8bc5-ef25297f053e)

2. Confirm successful upload by checking for a message like the one below:

   ![Successful Upload](https://github.com/apsessoms/AzureCustomRBACRole/assets/99392512/e506bbfb-c754-4317-a472-adef625a5a53)

## Step 3: Edit JSON File

1. Open the file in the PowerShell session using `#code ./<filename>`.

   ![Open File](https://github.com/apsessoms/AzureCustomRBACRole/assets/99392512/b5fa55a6-9bff-42ce-9fa0-5070ddd43611)

2. Edit the **assignable scope section**.
3. Fill in the **subscription ID** (multiple subscriptions can be entered, separated by commas).

   ![Edit Scope](https://github.com/apsessoms/AzureCustomRBACRole/assets/99392512/9ead8eda-190b-449e-9161-6afb9535bf94)

## Step 4: Create New Role

1. Create a new role in the CloudShell using the altered JSON file.

   ![Create Role](https://github.com/apsessoms/AzureCustomRBACRole/assets/99392512/87db142f-c5a5-42a0-9348-315e32f04ece)

2. If an error occurs, try refreshing and re-running the command.

   ![Success](https://github.com/apsessoms/AzureCustomRBACRole/assets/99392512/71c45228-c98d-4e10-bed7-c8f16c42e3d8)

## Step 5: Assign Custom Role

1. Navigate to a virtual machine and click on "IAM."
2. Click on the **filter button** and select **custom role** to list all available custom roles.
3. Select the custom role you just created.

   ![Assign Role](https://github.com/apsessoms/AzureCustomRBACRole/assets/99392512/bae96f6e-b62a-4acc-9773-f46aa1e0ec8a)

**Note**: You can assign the scope to cover the entire subscription or narrow it down to certain resources. Start at the parent subscription, and then identify the specific resource group.

![Scope Assignment](https://github.com/apsessoms/AzureCustomRBACRole/assets/99392512/4e7a50e9-f655-4d1b-97f9-6f61b685fc47)

---

I hope this organized guide is helpful! Let me know if there are any additional details or changes you'd like me to make.
