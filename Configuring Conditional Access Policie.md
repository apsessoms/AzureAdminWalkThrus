# Configuring Conditional Access Policies
Step by step guide for creating a conditional access policy.

Login into https://portal.azure.com and go to Azure AD Conditional Access Policies. 
Let's first go look at **Named Locations.** See screenshot below: 

![image](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/071b4745-0b5b-4858-aece-45ab7f8ec9bc)

Locations help us to better define the scenarios we want different access policies to be applied to. Locations is a very commonly used scenario. For example, "if anyone is accessing an app from the corporate HQ location then we don't need to require MFA." **The idea being...they are in a safe location.**

Let's create an **IP ranges location** and call it HQ. If a user is accessing an application from HQ then we consider that to be a **trusted location.** Now we need to define what is the head office by clicking the + symbol below. This is where you would add the public IP address of the internet gateway that is used at HQ. 
![image](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/99a20087-3762-4f0d-b92e-869c5d82c21f)


You can also create a "Countries Location" and this is where the responsibility is more or less given to Microsoft to manage. I will choose Germany since at the time of this project, I am currently living in Germany. Microsoft will manage that location by monitoring the IP address of different requests to access things through Azure and if those requests come through specific IPs that belong to Germany then they **will be tagged as belonging to the Germany location.** 

![image](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/7f6af727-eda3-478b-a38e-c267d2126ac6)

Now go over to **Policies** and click on the chiclet. Click on New Policy and let's go through it step by step: 

![image](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/57ad3b13-42a6-48b9-b5f3-be7a5b15ac6c)

We want a conditional access policy for Finance Application. **What kind of situation are we look at?** 

![image](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/47e882ca-c81a-4712-a1dc-73b312fa4b93)

Maybe we are going to apply additional conditons when anyone accesses the "Finance Application" from outside the HQ.
The next question will be **who does this apply to?** In the **assignment** section, we can choose all users within the environment or maybe just a specific group of users. You can even lock it down to just guest users, specific directory roles like Global Admins, or simply just specify individual groups or users. 

![image](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/4063f1b7-584f-44a9-8e2e-71dc43df5abe)

You can also **exclude** users and groups. For example, you could exclude Global Administrators from this conditional access policy by selecting Directory Roles and selecting the matching role. Just remember that you can lock yourself out from Azure so it is important to really understand what these CA policies are doing. I won't be configuring any exclusions for this project. 

![image](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/44fe5949-bf9c-4f92-8104-13d76780253b)

Next, lets specify what application this condtional access policy is actually referring to. **The Target Resource**

![image](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/8c5d3345-4e40-4d52-8232-c2605ab9c951)

This is where you will go and select the specific application you want this CA policy applied to. Make sure it is available to select from the menu. You can select multiple applications. **Remember, we can exclude apps from this policy.** But you might lock youself out from critical management resources so be careful when excluding users and applications. 


Now we will look at **Conditions.** This is where a lot of the power for conditional access policies originates from. 
- **Locations:** If you click Yes, you are saying "Yes you want this policy to apply and to look at Locations." Then specify what locations those should be.

 ![image](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/ec748399-2782-4e4d-9251-3929766ecb5a)

 - You can also configure this policy to apply when you are **outside of trsuted locations** (you would select exclude>all trusted locations). This would mean that the policy would apply when people would try to access the finance app from outside of the HQ location which is your one trusted location that we created earlier.

- If you want to specify what type of device this CA policy applies to, configure the **Device Platform** option as seen below. 

![image](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/d62eed36-d882-4ee5-a458-29d24d6b0c72)

The condition labeled **user risk** is contingent upon whether you have access to Azure AD Identity Protection or not. If you did want your platform to look at how risk your users are considered to be you would configure this. Next we will take a look at the **Access Control Section.**

This is the grant end session section. Grant is basically saying, with everything you just defined for the situation you just created in the previous steps, what do you want to do with it? Do you want to block access entirely? **Then you would BLOCK ACCESS.**

![image](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/3eff0174-dbc0-4bcd-8f47-a186af73b195)

-If you **Grant Access** you can require MFA to be in use. You can require users to be on a specific device that is managed by intune and marked as compliant if they want to use the finance app. Depeneding on how many of these options you pick, you have to choose if you want all of those controls to be required....or just one of them. You will see this option at the bottom of the Grant menu on the right hand side of your screen. 

![image](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/597fc757-53ad-4f17-8bdf-997730efc68e)

The last thing I want to remind you of is that before you implement these new CA policies into your environment, place the **Enable Policy** onto Report-Only mode before going live. The policy will be created and you are able to monitor it to see if this is something your organization actually wants to roll out organization wide. 
