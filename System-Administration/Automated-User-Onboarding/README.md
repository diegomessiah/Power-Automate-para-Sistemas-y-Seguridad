# Automated User Onboarding

## Description
This Power Automate workflow simplifies the process of onboarding new users in Microsoft 365. It creates new accounts, assigns licenses, and sends welcome emails automatically. This ensures a consistent and efficient onboarding experience for new employees.

---

## Features
- Automatic creation of new users in Microsoft 365.
- Assignment of licenses based on predefined roles or groups.
- Sends a custom welcome email with login information and resources.
- Logs onboarding activities in a Microsoft Excel file or SharePoint list for tracking.

---

## Setup Instructions
1. **Prepare the Workflow**:
   - Download the `template.zip` file provided in this folder.
   - Import it into Power Automate:
     - Navigate to **Power Automate > My Flows > Import**.
     - Upload the file and configure the required connections.

2. **Configure the Workflow**:
   - Update the following parameters in the flow:
     - **User Details**: Define where the user details will be sourced (e.g., Microsoft Forms or SharePoint list).
     - **License Assignment**: Update the license and group assignment settings.
     - **Welcome Email**: Customize the email template with your organization's branding and resources.

3. **Test the Workflow**:
   - Submit a test user entry in the input source (e.g., Microsoft Forms or SharePoint list).
   - Ensure that the user account is created, the license is assigned, and the welcome email is sent.

---

## Files
- `template.zip`: Pre-built Power Automate workflow template for automated user onboarding.

---

## Customization Ideas
- **Role-Specific Onboarding**:
  - Extend the workflow to assign different licenses and permissions based on job roles.
- **Integration with HR Systems**:
  - Sync the workflow with HR systems like Workday or BambooHR for seamless user data integration.
- **Onboarding Checklist**:
  - Add steps to create tasks in Microsoft Planner for IT and HR teams to ensure all onboarding actions are completed.

---

## Troubleshooting
- **Connection Issues**:
  - Ensure that all connections (e.g., Microsoft 365, SharePoint, Outlook) are configured correctly.
- **License Assignment Errors**:
  - Verify that the specified licenses are available in your Microsoft 365 tenant.

---

## License
This project is licensed under the [MIT License](LICENSE).
