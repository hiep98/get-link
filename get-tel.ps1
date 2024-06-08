# $action = New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "-ExecutionPolicy Bypass -File C:\Packages\Plugins\Microsoft.Compute.CustomScriptExtension\1.10.16\Downloads\0\get-tel.ps1"
# $trigger = New-ScheduledTaskTrigger -AtLogon
# $principal = New-ScheduledTaskPrincipal -UserId "NT AUTHORITY\SYSTEM" -LogonType ServiceAccount
# $settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -StartWhenAvailable

# Register-ScheduledTask -TaskName "RunGetTelScript" -Action $action -Trigger $trigger -Principal $principal -Settings $settings


# Invoke-WebRequest -Uri "https://twdzq-my.sharepoint.com/:u:/g/personal/test_twdzq_onmicrosoft_com/EcIQqR3mwNZHlf32_O_HE0wBOQZyBZlRkDaxVlI0Tov7nQ?download=1" -OutFile "C:\Users\O203paR4trZGTq0\Downloads\Utel.zip"

# Define paths
$UtelZipPath = "D:\Utel.zip"
$DesPath = "D:\"

Invoke-WebRequest -Uri "https://twdzq-my.sharepoint.com/:u:/g/personal/test_twdzq_onmicrosoft_com/ETGfTN2mgABDj10OL4VBzrQBIO29cGeO8eJ0fXyEmt3AyQ?download=1" -OutFile $UtelZipPath

# $AutoHotkeyExtractPath = "C:\Users\O203paR4trZGTq0\Downloads\utel\"

# Function to extract ZIP files
function Extract-ZipFile {
    param (
        [string]$zipFilePath,
        [string]$destinationFolderPath
    )
    
    if (-not (Test-Path $destinationFolderPath)) {
        New-Item -ItemType Directory -Path $destinationFolderPath | Out-Null
    }
    
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipFilePath, $destinationFolderPath)
}

# Extract Utel.zip
Extract-ZipFile -zipFilePath $UtelZipPath -destinationFolderPath (Join-Path -Path (Get-Item $UtelZipPath).DirectoryName -ChildPath "Utel")

Expand-Archive -Path $UtelZipPath -DestinationPath $DesPath


# Extract AutoHotkey.zip
# Extract-ZipFile -zipFilePath $AutoHotkeyZipPath -destinationFolderPath $AutoHotkeyExtractPath



# Start-Process -FilePath "D:\utel\AutoHotkey_1.1.37.00_setup.exe" -Wait

# Run login
$zip_file_path = "D:\tele.zip"
$login_one = "D:\utel\login.ahk"
$autohotkey_exe = "D:\hiep\phan mem - khong cai dat\PotPlayer\PotPlayerMini64.exe"

Write-Host "Running AutoHotkey script: $login_one with $autohotkey_exe"
Start-Process -FilePath $autohotkey_exe -ArgumentList $login_one


# Pause until Enter key is pressed
# Write-Host "Press Enter to continue..."
# $null = Read-Host

Write-Host "Waiting for 1 minute..."
Start-Sleep -Seconds 60
Write-Host "Extracting zip file: $zip_file_path"
Expand-Archive -Path $zip_file_path -DestinationPath "D:\"


$tele = "$DesPath\utel\tele.ahk"
Write-Host "Running AutoHotkey script: $tele with $autohotkey_exe""
Start-Process -FilePath $tele
Write-Host "Running AutoHotkey script: $login_one with $autohotkey_exe"
Start-Process -FilePath $autohotkey_exe -ArgumentList $tele
