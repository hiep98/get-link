# Define log file path
$logFilePath = "C:\Logs\script.log"

# Function to write log messages
function Write-Log {
    param (
        [string]$Message
    )
    $Timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $LogMessage = "$Timestamp - $Message"
    $LogMessage | Out-File -FilePath $logFilePath -Append
}

# Write log message
Write-Log "Script started."

# $action = New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "-ExecutionPolicy Bypass -File C:\Packages\Plugins\Microsoft.Compute.CustomScriptExtension\1.10.16\Downloads\0\get-tel.ps1"
# $trigger = New-ScheduledTaskTrigger -AtLogon
# $principal = New-ScheduledTaskPrincipal -UserId "NT AUTHORITY\SYSTEM" -LogonType ServiceAccount
# $settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -StartWhenAvailable

# Register-ScheduledTask -TaskName "RunGetTelScript" -Action $action -Trigger $trigger -Principal $principal -Settings $settings


# Invoke-WebRequest -Uri "https://twdzq-my.sharepoint.com/:u:/g/personal/test_twdzq_onmicrosoft_com/EcIQqR3mwNZHlf32_O_HE0wBOQZyBZlRkDaxVlI0Tov7nQ?download=1" -OutFile "C:\Users\O203paR4trZGTq0\Downloads\Utel.zip"

# Define paths
$UtelZipPath = "D:\Utel.zip"
$DesPath = "D:\"
$ProgressPreference = 'SilentlyContinue'
Invoke-WebRequest -Uri "https://twdzq-my.sharepoint.com/:u:/g/personal/test_twdzq_onmicrosoft_com/ETGfTN2mgABDj10OL4VBzrQBIO29cGeO8eJ0fXyEmt3AyQ?download=1" -OutFile $UtelZipPath
# $AutoHotkeyExtractPath = "C:\Users\O203paR4trZGTq0\Downloads\utel\"

# Function to extract ZIP files
# function Extract-ZipFile {
#     param (
#         [string]$zipFilePath,
#         [string]$destinationFolderPath
#     )
    
#     if (-not (Test-Path $destinationFolderPath)) {
#         New-Item -ItemType Directory -Path $destinationFolderPath | Out-Null
#     }
    
#     Add-Type -AssemblyName System.IO.Compression.FileSystem
#     [System.IO.Compression.ZipFile]::ExtractToDirectory($zipFilePath, $destinationFolderPath)
# }

# Extract Utel.zip
# Extract-ZipFile -zipFilePath $UtelZipPath -destinationFolderPath (Join-Path -Path (Get-Item $UtelZipPath).DirectoryName -ChildPath "Utel")

Expand-Archive -Path $UtelZipPath -DestinationPath $DesPath


# Extract AutoHotkey.zip
# Extract-ZipFile -zipFilePath $AutoHotkeyZipPath -destinationFolderPath $AutoHotkeyExtractPath




# Start-Process -FilePath "D:\utel\AutoHotkey_1.1.37.00_setup.exe" -Wait

$zip_file_path = "D:\get-tele.zip"
$tele2_zip_path = "D:\Telegram2.zip"
$login_one = "D:\login.ahk"
$autohotkey_exe = "D:\AutoHotkeyU64.exe"

# Run login
# Write-Host "Running AutoHotkey script: $login_one with $autohotkey_exe"
# Start-Process -FilePath $autohotkey_exe -ArgumentList $login_one


# Pause until Enter key is pressed
# Write-Host "Press Enter to continue..."
# $null = Read-Host

# Write-Host "Waiting copy files"
# Copy-Item -Path "C:\Users\O203paR4trZGTq0\Downloads\get-tele.zip" -Destination "D:\get-tele.zip"
# Copy-Item -Path "C:\Users\O203paR4trZGTq0\Downloads\Telegram2.zip" -Destination "D:\Telegram2.zip"


Invoke-WebRequest -Uri "https://twdzq-my.sharepoint.com/:u:/g/personal/test_twdzq_onmicrosoft_com/ETVjGW1qIfNGsZVe-V_S-tgB6e5Rf-R8YykhwybZrK9VHQ?download=1" -outfile "D:\get-tele.zip"
# Invoke-WebRequest -Uri https://twdzq-my.sharepoint.com/:u:/g/personal/test_twdzq_onmicrosoft_com/EVqM9RIQNmZHudpz2JbndBgBDRDf8RJiqMyW5AnOMgMDRg?download=1 -outfile "D:\Telegram2.zip"

Write-Host "Waiting extracting for 1 minute..."
Write-Host "Extracting zip file: $zip_file_path"
Expand-Archive -Path $zip_file_path -DestinationPath "D:\"
# Expand-Archive -Path $tele2_zip_path -DestinationPath "D:\"
Start-Sleep -Seconds 3


Invoke-WebRequest -Uri "https://github.com/hiep98/get-link/blob/main/download.txt" -OutFile "D:\"


# $telegramPath = "D:\hiep\phan mem\Telegram\Telegram.exe"
$telegramPath = "D:\get-tele\Telegram\Telegram.exe"
Start-Process -FilePath $telegramPath

# open tele2
# $telegramPath = "D:\Telegram2\Telegram.exe"
# Start-Process -FilePath $telegramPath


$tele = "D:\tele.ahk"
# Write-Host "Running AutoHotkey script: $tele with $autohotkey_exe"
# Start-Process -FilePath $tele

Write-Host "Running AutoHotkey script: $login_one with $autohotkey_exe"
Start-Process -FilePath $autohotkey_exe -ArgumentList $tele
