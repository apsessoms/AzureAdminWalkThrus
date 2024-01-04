# 🌐 Network Security Groups and Application Security Groups
In this walkthrough, we'll set up a virtual networking infrastructure and deploy virtual machines to test the network filters. 🖥️ 

![Alt text](image-2.png)

## Task 1: 🛠️ Create a Virtual Networking Infrastructure
1. Sign into https://portal.azure.com 🌍
2. In the search bar, type "Virtual Network" and hit enter. 🔍
3. On the **Virtual Network blade**, click + Create 🆕

![Alt text](image-3.png)

4.	On this page, specify the following settings and leave the others with their default values. 
   -	Subscription: The name of the subscription you are using
   -	Resource group: click create new and name accordingly 
   -    Name: myVirtualNetwork
   -    Region: East US 
5.	Click on the **IP Addresses** tab and set the IPv4 space to **10.0.0.0/16** and if needed in the Subnet name column, click **Default**, on the Edit Subnet blade, specify the following settings and click Save.💾

![Alt text](image-4.png)

6.	On the **Review + Create** tab, click on Create. Wait for the template to be deployed.⏳

![Alt text](image-5.png)

## Task 2: 🛡️ Create Application Security Groups

1.	In the search bar, type "Application security groups" and press the enter. 🔍
2.	Click on the + Create button and on the basics tab, specify the following settings:
- Resource Group: use the same resource group you created in the previous task
- Name: myAsgWebServer
- Region: East US 📍

![Alt text](image-6.png)

3.	Click on **Review + Create** and wait for the validation to pass. Then click create.✅
4.	Navigate back to the **Application Security Group** and create another Security Group by clicking on the + Create button 🆕
5.	Specify the following settings:
- Resource Group: use the same resource group you created in the previous task
- Name: myAsgMgmtServer
- Region: East US 📍
6.	Click on **Review + Create** and wait for the validation to pass. Then click create.✅ 
7.	You should now see two application security groups.👀

![Alt text](image-7.png)

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

![Alt text](image-8.png)

6.	Click on + Associate and specify the following settings: 
- Virtual Network: myVirtualNetwork
- 	Subnet: default
7.	Click on **OK.**

![Alt text](image-9.png)

## Task 4: 🛡️Create inbound NSG security rules to all traffic to web servers and RDP to the servers.
1.	On the **myNsg** blade, click on **inbound security rules.**👆
2.	Review the default inbound security rules and click + Add

![Alt text](image-10.png)

3.	Specify the following settings to allow TCP ports 80 and 443 to the myAsgWebServers application security group and leave all other values with their default values. 

![Alt text](image-11.png)

4.	Click on + Add to create the new inbound rule. Now we are going to create another inbound security rule.🚧
5.	Click on + Add and specify the following settings to allow the RDP port (TCP 3389) to the myAsgMgmtServers application security group and leave all other values with their default values. 

![Alt text](image-12.png)

6.	Click on add to create the new inbound rule. 

**Summary**: You've successfully deployed a virtual network, network security with inbound security rules, and two application security groups. Great job! 🎉