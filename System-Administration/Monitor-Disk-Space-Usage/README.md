# Monitor Disk Space Usage

## Description
This Power Automate workflow monitors disk space on critical servers and sends alerts to a Microsoft Teams channel if usage exceeds 80%. It helps administrators proactively address storage issues before they affect operations.

---

## Features
- Check disk usage across multiple servers.
- Send alerts to Microsoft Teams with server details and disk usage percentage.
- Schedule the workflow to run at regular intervals.

---

## Setup Instructions
1. **Prepare the PowerShell Script**:
   - Use the provided PowerShell script `disk-space-check.ps1` to check disk space on servers.
   - Save the script on a server accessible by Power Automate.

2. **Import the Workflow**:
   - Import the `template.zip` file into Power Automate:
     - Go to **Power Automate > My Flows > Import**.
     - Upload the file and configure the connections.

3. **Configure the Workflow**:
   - Update the server list in the script.
   - Set the alert threshold (e.g., 80%).

4. **Test the Workflow**:
   - Run the flow manually and verify that the alerts are sent to your Teams channel.

---

## Files
- `template.zip`: Power Automate workflow template.
- `disk-space-check.ps1`: PowerShell script for checking disk usage.
