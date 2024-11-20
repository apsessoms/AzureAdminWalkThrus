# Azure Roles vs. Entra ID Roles 🖥
Azure roles and Entra ID roles help control access, but they work in different parts of the system. Here's an easy way to understand it:

## Azure Roles ☁
Azure roles help you **manage** all of your resources in the cloud, like virtual machines, databases, key vaults, or storage accounts. 
+ Azure Roles decide **who can do what** with these resources. 
    + Can somebody turn this VM on or off?
    + Can somebody look at data in a storage account?

### "How does it look in Azure?"
+ **Owner:** Full control of a resource
+ **Reader:** Can only view the resources, & can't make ANY changes. 

These roles are for managing **Azure Resources** within your subscription, like specific applications, services, or resource groups. 

## Entra ID Roles 📖
Entra ID roles are for managing users and access in your organization.
+ Entra ID helps you manage user identities (who is who) across your organization. 
+ They decied who can manage users, groups, applicaitons, or security settings in your Microsoft Entra tenant. 
    + Can someone create new user accounts?
    + Can they change a groups permissions?"

### "How does it look in Entra?"
 + **Global Administrator:** Full control of your Entra tenant.
 + **User Administrator:**  Can manage users but not apps or security.
    + These roles focus on managing people and **policies within your organization**, not Azure Resources.

![image](https://github.com/user-attachments/assets/af51151f-c84f-4ced-91c5-31c02d6e602f)

 **Source: learn.microsoft.com**

## Common Azure Roles Explained 🌐
+ **Owner:** Full control to manage all resources, & <u> can assign roles in Azure RBAC.</u> 
+ **Contributor:** Can create and manage all types of Azure resources, but <u>can't assign roles.</u>
+ **Reader:** Can view all resources, but <u>can't make any changes.</u>
+ **User Access Administrator:** Can manage user access to Azure resources & assign roles.✅ <u> Can't use Azure Policy to manage access.</u>🚫
+ **RBAC Administrator:** Can manage user access and assignments in Azure RBAC✅, but <u>can't use Azure Policy to manage access.</u>🚫

You can find role assignments using Azure RBAC in the Azure portal on the left-hand side under **Access Control (IAM)**. This page can be found throughout the portal, such as management groups, subscriptions, resource groups, and individual resources.

![image](https://github.com/user-attachments/assets/e68ce24a-2f94-444f-90fe-74f4091ca79e)

If you click on the **Roles** tab directly next to Role Assignments, you can see a list of the built-in and custom roles. 

These built-in roles are for specific Azure services, like **Storage Account Contributor** or **Virtual Machine Contributor**. These roles are more specific to the type of resource you're managing. For a specific list of built-in roles, check out the [Azure documentation](https://docs.microsoft.com/en-us/azure/role-based-access-control/built-in-roles).

## Common Entra ID Roles Explained 📚
+ **Global Administrator:** Full control of your Entra tenant, can manage users, groups, and security settings. Can reset passwords, manage licenses, and create new user accounts.
+ **User Administrator:** Can manage users and groups, but <u>can't manage security settings or applications.</u>
+ **Billing Administrator:** Can make purchases, manage subscriptions, and manage support tickets. <u>Can't manage users or groups.</u>

You can see the list of Microsoft Entra roles in the **Roles and administrators** section of the Microsoft Entra admin center. This page can be found under **Roles** in the left-hand navigation.

![image](https://github.com/user-attachments/assets/bf62eef8-0bb4-4b90-a233-a21503be8473)

 **Source: learn.microsoft.com**

 ## Differences Between Azure and Entra ID Roles 🤔
 ![image](https://github.com/user-attachments/assets/0a81d555-9a68-41ef-ada6-40751f262167)

 ## Summary 📝
+ **Azure Roles** help you manage resources in the cloud, like VMs, databases, or storage accounts.
+ **Entra ID Roles** help you manage users and access in your organization.

Thank you for reading! If you have any questions or feedback, please let me know. I am always looking to improve my content. 

