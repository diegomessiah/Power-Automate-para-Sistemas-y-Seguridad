# Step-by-Step Guide: Phishing Email Alerts with Power Automate

This guide will help you create a **Phishing Email Alerts** workflow in Power Automate. The workflow will automatically notify your security team when users report phishing emails, ensuring quick response and tracking.

---

## **Step 1: Define the Workflow**
Before setting up the workflow, identify the tasks you want to automate:
- Detect when users report phishing emails.
- Notify the security team about the reported phishing email.
- Log phishing email details for auditing and tracking purposes.

---

## **Step 2: Access Power Automate**
1. Go to [Power Automate](https://flow.microsoft.com).
2. Sign in with your Microsoft 365 account.
3. Navigate to the **Create** section.

---

## **Step 3: Create a New Flow**
1. **Select a Trigger**:
   - Use the trigger **"When a new email arrives"** (Outlook).
   - Set conditions to filter emails flagged as phishing:
     - **Folder**: Specify the folder where phishing emails are moved (e.g., "Phishing Reports").
     - **Subject or Keywords**: Filter for emails containing "Phishing" or "Reported Phishing Email."

2. Assign a name to your flow, e.g., `Phishing Email Alerts`.

---

## **Step 4: Configure the Workflow Steps**

### **Step 4.1: Extract Email Details**
1. Add the action **"Get email"** to retrieve details of the reported email.
2. Extract the following information:
   - Sender's email address.
   - Email subject.
   - Email body or attachments (if needed).

---

### **Step 4.2: Notify the Security Team**
1. Add the action **"Post a message in a chat or channel"** (Microsoft Teams).
2. Configure the message to include:
   - Email sender's address.
   - Subject of the email.
   - A link to view the email in Outlook (optional).

Example message:
```
🚨 **Phishing Alert** 🚨
- **From**: [Sender Email]
- **Subject**: [Email Subject]
- **Reported By**: [User Email]

Please investigate this phishing email immediately.
```

---

### **Step 4.3: Log the Incident**
1. Add the action **"Create item"** (SharePoint) or **"Add a row into a table"** (Excel Online).
2. Log the phishing email details:
   - Reported Date/Time.
   - Sender Address.
   - Subject.
   - Reported By (User Email).

---

### **Step 4.4: Optional - Forward Email to Security Team**
1. Add the action **"Forward an email (V2)"** (Outlook).
2. Configure it to forward the reported email to a dedicated security inbox.

---

## **Step 5: Test the Workflow**
1. Send a test phishing email to your reporting mechanism (e.g., via Outlook).
2. Move the email to the specified folder (e.g., "Phishing Reports").
3. Verify that:
   - A notification is sent to the security team in Microsoft Teams.
   - The phishing email details are logged in SharePoint or Excel.
   - The email is forwarded to the security inbox (if configured).

---

## **Step 6: Optimize and Customize**
1. **Add Severity Levels**:
   - Use conditions to mark certain emails as "High Priority" based on keywords or sender addresses.
2. **Integrate with SIEM**:
   - Add a step to send phishing alerts to your organization's Security Information and Event Management (SIEM) system.
3. **Automate Email Deletion**:
   - Add a step to move confirmed phishing emails to the deleted folder or quarantine.

---

## **Step 7: Export the Flow**
1. Go to **My Flows** in Power Automate.
2. Select the phishing alert flow you just created.
3. Click **Export > Package (.zip)**.
4. Save the file as `template.zip` to share or reuse the workflow.

---

## Notes
This workflow helps ensure that phishing emails are quickly investigated and tracked, reducing the risk of security breaches. Customize the workflow to fit your organization's specific requirements.

Let me know if you need additional help with configurations or advanced integrations!
