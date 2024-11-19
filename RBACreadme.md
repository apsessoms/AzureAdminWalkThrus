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