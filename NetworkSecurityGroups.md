# 🌐 Network Security Groups and Application Security Groups
In this walkthrough, we'll set up a virtual networking infrastructure and deploy virtual machines to test the network filters. 🖥️ 

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/5f38a841-98fc-4769-a1a9-eea05db79674)


## Task 1: 🛠️ Create a Virtual Networking Infrastructure
1. Sign into https://portal.azure.com 🌍
2. In the search bar, type "Virtual Network" and hit enter. 🔍
3. On the **Virtual Network blade**, click + Create 🆕

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/30e859bd-e811-4c49-98eb-2e56d8464a5e)


4.	On this page, specify the following settings and leave the others with their default values. 
   -	Subscription: The name of the subscription you are using
   -	Resource group: click create new and name accordingly 
   -    Name: myVirtualNetwork
   -    Region: East US 
5.	Click on the **IP Addresses** tab and set the IPv4 space to **10.0.0.0/16** and if needed in the Subnet name column, click **Default**, on the Edit Subnet blade, specify the following settings and click Save.💾

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/ceb886ae-beb9-4db9-8803-a2ad23d9fc3f)

6.	On the **Review + Create** tab, click on Create. Wait for the template to be deployed.⏳

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/11f95cfe-21ad-453a-a26b-bd265f4fa018)


## Task 2: 🛡️ Create Application Security Groups

1.	In the search bar, type "Application security groups" and press the enter. 🔍
2.	Click on the + Create button and on the basics tab, specify the following settings:
- Resource Group: use the same resource group you created in the previous task
- Name: myAsgWebServer
- Region: East US 📍

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/98f20764-3cdd-468e-9e05-65a6054e22c3)


3.	Click on **Review + Create** and wait for the validation to pass. Then click create.✅
4.	Navigate back to the **Application Security Group** and create another Security Group by clicking on the + Create button 🆕
5.	Specify the following settings:
- Resource Group: use the same resource group you created in the previous task
- Name: myAsgMgmtServer
- Region: East US 📍
6.	Click on **Review + Create** and wait for the validation to pass. Then click create.✅ 
7.	You should now see two application security groups.👀

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/59376d3d-88f9-41c2-a16e-f3ee84938ec7)


## Task 3: 🚦 Create a Network Security Group and Associate the NSG to the Subnet
1.	In the search bar, type **Network Security Group** and click enter.🔍 
2.	Create a new NSG and specify the following settings: 
- Subscription: the name of the subscription you want to use📝
- Resource Group: use the same resource group you created in the previous task
- Name: myNsg
- Region: East US 📍
3.	Click on **Review + Create** and wait for the validation to pass. Then click create.✅
4.	Go back into your Network Security Group by clicking on **“myNsg”**
5.	Under Settings in the left navigation panel, click on **Subnets** 

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/f9aec15c-0b3d-410b-8263-730c9a5081cc)


6.	Click on + Associate and specify the following settings: 
- Virtual Network: myVirtualNetwork
- 	Subnet: default
7.	Click on **OK.**

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/c49107f8-2c53-4e2e-afca-4d39b9b202b8)


## Task 4: 🛡️Create inbound NSG security rules to all traffic to web servers and RDP to the servers.
1.	On the **myNsg** blade, click on **inbound security rules.**👆
2.	Review the default inbound security rules and click + Add

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/33e4c02b-9f26-4eb8-b8dd-ae43866bd696)


3.	Specify the following settings to allow TCP ports 80 and 443 to the myAsgWebServers application security group and leave all other values with their default values. 

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/bf35be5f-b82b-437f-a676-41b8c200eea5)


4.	Click on + Add to create the new inbound rule. Now we are going to create another inbound security rule.🚧
5.	Click on + Add and specify the following settings to allow the RDP port (TCP 3389) to the myAsgMgmtServers application security group and leave all other values with their default values. 

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/86d5c9ec-18b9-4108-84a0-66350ad9f2a5)


6.	Click on add to create the new inbound rule. 

**Summary**: You've successfully deployed a virtual network, network security with inbound security rules, and two application security groups. Great job! 🎉
