# How to Use Entra Connect 🔌

## Introduction
Entra Connect is a tool that helps you integrate your on-premises directories with Azure Active Directory. This guide will walk you through the steps to set up and use Entra Connect. For the puspose of this guide, I will be using a virtual machine in Hyper-V to demonstrate the installation and configuration of Entra Connect. 🖥️

## Prerequisites
- An Azure Active Directory tenant
- An on-premises Active Directory
- A server to install Entra Connect

## Installation

### TLS 1.2 enforcement for Microsoft Entra Connect
![image](https://github.com/user-attachments/assets/59fa7bb3-fbdd-4173-9c18-858b66d2f1ac)

Microsoft Entra Connect requires TLS 1.2 to be enabled on the server where it is installed. To enable TLS 1.2, click on the link & follow instructions.
<a href="https://learn.microsoft.com/en-us/entra/identity-hybrid/how-to-connect-install-prerequisites#tls-12-enforcement-for-microsoft-entra-connect">TLS 1.2 enforcement for Microsoft Entra Connect</a>

1. **Download Entra Connect**
    - Go to the [Microsoft Download Center](https://www.microsoft.com/en-us/download) and download the latest version of Entra Connect.

2. **Install Entra Connect**
    - Run the installer and follow the on-screen instructions.
    - Choose the appropriate installation type (Express or Custom).
    - Enter your Entra ID Global Admin Credentials 
![image](https://github.com/user-attachments/assets/a08655d2-6937-4d3a-bdb9-4d060760b408)


## Configuration

1. **Launch Entra Connect**
    - Open Entra Connect from the Start menu.

2. **Configure Directory Sync**
    - Follow the wizard to connect to your Azure AD tenant.
    - Enter your Azure AD global administrator credentials.
    - You will also be prompted to enter your on-premises credentials.
    - Connect to your on-premises Active Directory.
  
    ![image](https://github.com/user-attachments/assets/308ef13d-92b0-44ed-9934-7035276749cf)
   
The setup will check your domain and verify it is  set up in Entra ID. For users to sign in using their credentials, the domain names must match between the two systems.

4. **Finish Configuration**
    - Complete the wizard and start the synchronization process.
  
![image](https://github.com/user-attachments/assets/154937e2-fdf7-4ff1-a4b5-a8919ae12fe7)

5. Verify users and devices have synced from on-premise

![image](https://github.com/user-attachments/assets/8d49f67b-2964-455b-885a-5513ab1c96d6)


## Monitoring and Maintenance

- **Monitor Synchronization**
  - Use the Entra Connect Health dashboard to monitor the status of your synchronization.
  
- **Regular Updates**
  - Keep Entra Connect updated to ensure compatibility and security.

## Troubleshooting

- **Common Issues**
  - Refer to the [official documentation](https://docs.microsoft.com/en-us/azure/active-directory/hybrid/how-to-connect-install-prerequisites) for troubleshooting common issues.

## Conclusion
Entra Connect simplifies the process of integrating your on-premises directories with Azure AD. Follow this guide to ensure a smooth setup and ongoing maintenance.
