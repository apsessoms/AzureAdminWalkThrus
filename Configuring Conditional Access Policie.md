# Configuring Conditional Access Policies: A Step-by-Step Guide

## Step 1: Log In and Access Locations
1. Log in to [Azure Portal](https://portal.azure.com).
2. Go to Azure AD Conditional Access Policies.
3. Click on **Named Locations** to define scenarios for access policies.

   ![Named Locations](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/071b4745-0b5b-4858-aece-45ab7f8ec9bc)

## Step 2: Create Locations
- **IP ranges location**: Name it (e.g., "HQ") and define it as a trusted location by adding the public IP address of the HQ gateway.
- **Countries Location**: Choose a country (e.g., Germany), and Microsoft will manage the location.

   ![IP Ranges](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/99a20087-3762-4f0d-b92e-869c5d82c21f)
   ![Countries](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/7f6af727-eda3-478b-a38e-c267d2126ac6)

## Step 3: Create New Policy
1. Click on **Policies**, then **New Policy**.
2. Name the policy (e.g., "Finance Application").

   ![New Policy](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/57ad3b13-42a6-48b9-b5f3-be7a5b15ac6c)

## Step 4: Define Conditions
- **Assignment**: Choose users or groups this policy applies to. Be careful with exclusions.

   ![Assignment](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/4063f1b7-584f-44a9-8e2e-71dc43df5abe)

- **Target Resource**: Select the application(s) this policy applies to.

   ![Target Resource](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/8c5d3345-4e40-4d52-8232-c2605ab9c951)

- **Conditions**: Configure locations, device platforms, and user risk as needed.

   ![Locations](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/ec748399-2782-4e4d-9251-3929766ecb5a)
   ![Device Platform](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/d62eed36-d882-4ee5-a458-29d24d6b0c72)

## Step 5: Set Access Control
- **Block Access**: Deny access entirely.
- **Grant Access**: Define conditions like MFA, device compliance, etc.

   ![Block Access](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/3eff0174-dbc0-4bcd-8f47-a186af73b195)
   ![Grant Access](https://github.com/apsessoms/RaspberryPiProjects/assets/99392512/597fc757-53ad-4f17-8bdf-997730efc68e)

## Step 6: Enable and Monitor Policy
- Set the **Enable Policy** to "Report-Only" mode for monitoring before going live.

---

This guide provides a clear path for creating a conditional access policy, including defining trusted locations, specifying target resources, setting conditions, and configuring access control. Always be cautious with exclusions and test policies in a controlled environment before deployment.
