# PowerShell script to check disk space on a server

$threshold = 80  # Set the disk usage threshold (in percentage)

# Get disk usage for all drives
$drives = Get-PSDrive -PSProvider FileSystem | Where-Object { $_.Used -gt 0 }

foreach ($drive in $drives) {
    $usedPercentage = ($drive.Used / $drive.Size) * 100
    if ($usedPercentage -ge $threshold) {
        Write-Output "Drive $($drive.Name) is $([math]::Round($usedPercentage, 2))% full."
    }
}
