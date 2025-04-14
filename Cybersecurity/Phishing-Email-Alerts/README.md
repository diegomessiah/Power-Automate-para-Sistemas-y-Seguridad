# Phishing Email Alerts Workflow

## Description
This Power Automate workflow automates the process of detecting and responding to phishing emails reported by users. It notifies the security team, logs phishing details, and forwards the reported email for further investigation.

---

## Features
- Detects emails flagged as phishing and moved to a specific folder.
- Notifies the security team with email details via Microsoft Teams.
- Logs phishing incidents in SharePoint or Excel Online for tracking.
- Optionally forwards reported phishing emails to a security inbox.

---

## Setup Instructions

### 1. **Prepare the Workflow**
- Download the provided `template.zip` file from this directory.
- Import it into Power Automate:
  1. Navigate to **Power Automate > My Flows > Import**.
  2. Upload the file and configure the necessary connections (e.g., Outlook, SharePoint, Teams).

---

### 2. **Configure the Workflow**
- **Trigger**: Set the trigger to monitor a folder where phishing emails are moved (e.g., "Phishing Reports").
- **Notification**: Customize the message sent to your security team in Microsoft Teams.
- **Logging**: Update the fields in the SharePoint list or Excel Online table to include phishing email details.

---

### 3. **Test the Workflow**
- Move a test phishing email to the specified folder.
- Verify that:
  - A notification is sent to the security team.
  - Phishing details are logged in SharePoint or Excel.
  - The email is forwarded to the security inbox (if configured).

---

## Customization Ideas
- **Severity Levels**:
  - Use conditions to categorize phishing emails as "High Priority" based on keywords or sender domains.
- **SIEM Integration**:
  - Send phishing alerts to your Security Information and Event Management (SIEM) system for centralized monitoring.
- **Auto-Quarantine**:
  - Add a step to move confirmed phishing emails to a quarantine folder.

---

## Files
- `template.zip`: Pre-built Power Automate workflow template for phishing email alerts.

---

## Troubleshooting
- **Connection Errors**:
  - Ensure all necessary connections (Outlook, SharePoint, Teams) are properly configured and authorized.
- **Email Filtering Issues**:
  - Verify that the trigger is correctly set to monitor the specified folder.

---

## License
This project is licensed under the [MIT License](LICENSE).
