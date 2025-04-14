# Step-by-Step Guide: Automated User Onboarding with Power Automate

This guide will walk you through creating an **Automated User Onboarding** workflow in Power Automate to streamline new employee account creation, license assignment, and welcome communication.

---

## **Step 1: Define the Onboarding Process**
Before setting up the workflow, define the tasks you want to automate. Common onboarding tasks include:
- Creating a user account in Microsoft 365.
- Assigning licenses and permissions based on job roles or departments.
- Sending a welcome email with login credentials and resources.
- Logging onboarding activities for tracking purposes.

---

## **Step 2: Access Power Automate**
1. Go to [Power Automate](https://flow.microsoft.com).
2. Sign in with your Microsoft 365 account.
3. Navigate to the **Create** section.

---

## **Step 3: Create a New Flow**
1. **Select a Trigger** for the flow:
   - **Option 1**: Use **Microsoft Forms** to collect new user data.
     - Create a form with fields like "First Name," "Last Name," "Email," "Role," etc.
     - Choose **"When a new response is submitted"** as the trigger.
   - **Option 2**: Use a **SharePoint List** to store new user data.
     - Create a SharePoint list with columns for user details.
     - Choose **"When an item is created"** as the trigger.

2. Assign a name to your flow, for example: `Automated User Onboarding`.

---

## **Step 4: Configure the Workflow Steps**

### **Step 4.1: Capture User Data**
- **If using Microsoft Forms**:
  - Add the action **"Get response details"** to retrieve the submitted form data.
- **If using SharePoint**:
  - The trigger will automatically retrieve the SharePoint list item details.

---

### **Step 4.2: Create a User in Microsoft 365**
1. Add the action **"Create user (Azure AD)"**.
2. Fill in the required fields:
   - **DisplayName**: Use the first and last name (e.g., `John Doe`).
   - **MailNickname**: Generate a unique email alias (e.g., `johndoe`).
   - **UserPrincipalName**: Combine the alias with your domain (e.g., `johndoe@yourdomain.com`).
   - **Password**: Set a temporary password (e.g., `TempP@ssword123`).

---

### **Step 4.3: Assign Licenses**
1. Add the action **"Assign licenses (Azure AD)"**.
2. Select the appropriate license(s) for the new user.
3. Assign licenses based on roles or departments:
   - Use **Conditions** to check the user's role and assign specific licenses (e.g., "IT Staff" gets an E5 license).

---

### **Step 4.4: Send a Welcome Email**
1. Add the action **"Send an email (V2)"** from Outlook.
2. Customize the email template:
   - **Subject**: Welcome to [Your Company]!
   - **Body**:
     ```
     Hello [First Name],

     Welcome to [Your Company]! Below are your login details:
     - Username: [UserPrincipalName]
     - Temporary Password: [Temporary Password]

     Please change your password upon first login.

     Best regards,
     [Your IT Team]
     ```
3. Add links to useful resources like an employee portal or training materials.

---

### **Step 4.5: Log Onboarding Activity**
1. Add the action **"Add a row into a table"** (Excel Online) or **"Create item"** (SharePoint).
2. Log the new user's details, such as:
   - Full Name
   - Job Role
   - Email Address
   - License Assigned
   - Onboarding Date

---

### **Step 4.6: Notify Relevant Teams**
1. Add the action **"Post a message in a chat or channel"** (Microsoft Teams).
2. Notify the IT team or the user's manager about the successful onboarding:
   ```
   A new user has been onboarded:
   - Name: [User Name]
   - Email: [Email Address]
   - Role: [Job Role]
   ```

---

## **Step 5: Test the Workflow**
1. **Submit a Test Entry**:
   - Fill out the form or create an item in the SharePoint list with test data.
2. **Run the Flow**:
   - Trigger the flow manually or wait for it to execute automatically.
3. **Verify Results**:
   - Check if the user account is created in Microsoft 365.
   - Confirm that the license is assigned correctly.
   - Verify that the welcome email was sent and logged in the tracking system.
   - Ensure notifications were sent to relevant teams.

---

## **Step 6: Optimize and Customize**
1. **Add Role-Based Automations**:
   - Use conditions in Power Automate to customize onboarding for different departments or roles.
2. **Integrate with HR Tools**:
   - Sync with HR systems like Workday or BambooHR to automatically pull employee data.
3. **Automate Account Deactivation**:
   - Create a separate workflow to handle offboarding when employees leave the organization.

---

## **Step 7: Export the Flow**
1. Go to **My Flows** in Power Automate.
2. Select the onboarding flow you just created.
3. Click **Export > Package (.zip)**.
4. Save the file as `template.zip` to share or reuse the workflow.

---

## Notes
This workflow significantly reduces manual effort and ensures a consistent onboarding process for new employees. Feel free to customize the steps to fit your organization's specific requirements.

Let me know if you need help with specific configurations or advanced customizations!
