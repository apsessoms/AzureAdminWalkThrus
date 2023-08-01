# Configure a Custom Azure RBAC Role
by step guide for creating a custom RBAC role using a definition stored in a JSON file

Login into https://portal.azure.com and open a Azure CLI PowerShell session.

I used a a **JSON** file with a custom role defined already and uploaded it within this PowerShell session. 

![image](https://github.com/apsessoms/AzureCustomRBACRole/assets/99392512/c07edc4f-6223-4891-8bc5-ef25297f053e)

Once the file successfully uploaded, you should see a similar message like the one in the screenshot below:

![image](https://github.com/apsessoms/AzureCustomRBACRole/assets/99392512/e506bbfb-c754-4317-a472-adef625a5a53)

To open the file in the PowerShell sessions type #code ./ (name of your file) or refer to screenshot below:

![image](https://github.com/apsessoms/AzureCustomRBACRole/assets/99392512/b5fa55a6-9bff-42ce-9fa0-5070ddd43611)

The file edit will open up and you will need to **edit to assignable scope section.** If you do not fill in a **subscription ID**, it will not work. You can enter **multiple subscriptions** (or resource groups, management groups etc). Just make sure you separate them with commas.

![image](https://github.com/apsessoms/AzureCustomRBACRole/assets/99392512/9ead8eda-190b-449e-9161-6afb9535bf94)

Now you will create a new role in the CloudShell using the **JSON file we just altered.** 

![image](https://github.com/apsessoms/AzureCustomRBACRole/assets/99392512/87db142f-c5a5-42a0-9348-315e32f04ece)

That error message was a result of my not elevating my privileged access. Did a quick refresh and then ran the command again...success!

![image](https://github.com/apsessoms/AzureCustomRBACRole/assets/99392512/71c45228-c98d-4e10-bed7-c8f16c42e3d8)

This means the custome role is now available for use within the subscription we defined (my cloudbox subscription). So let's say we want to add a **role** to a virtual machine. **Remember roles are for permissions**. Click on the Virtual Machine and click on IAM. 

![image](https://github.com/apsessoms/AzureCustomRBACRole/assets/99392512/bec6de7e-5402-4e82-8c2c-552149404f97)

You will then click on the **filter button** and select **custom role** and there will list all the custom roles available.

![image](https://github.com/apsessoms/AzureCustomRBACRole/assets/99392512/fefc8269-8c5f-4928-83de-c3b5c17ae120)

You should see that custom role that we just created. 

![image](https://github.com/apsessoms/AzureCustomRBACRole/assets/99392512/bae96f6e-b62a-4acc-9773-f46aa1e0ec8a)

**It is important to note that you can assign the scope to cover the entire subscription or you can narrow it down to certain resources. To do that, it must start at the parent subscription first, and then you must identify the specific resource group.** 

![image](https://github.com/apsessoms/AzureCustomRBACRole/assets/99392512/4e7a50e9-f655-4d1b-97f9-6f61b685fc47)

