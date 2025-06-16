# Auto-update checker script for ENorm Elevator Management System
# This script is used by the application to check for updates

$VersionUrl = "https://raw.githubusercontent.com/metehan-ugus/ENorm-Release/main/metadata/version.json"

try {
    $Response = Invoke-RestMethod -Uri $VersionUrl -Method GET
    Write-Output $Response | ConvertTo-Json -Depth 10
} catch {
    Write-Error "Failed to check for updates: $($_.Exception.Message)"
    exit 1
}