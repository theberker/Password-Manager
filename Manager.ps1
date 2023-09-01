# Powershell-based password manager

# Init PowerShell Gui
Add-Type -AssemblyName System.Windows.Forms

# Creates form
$LocalManagerForm = New-Object system.Windows.Forms.Form

# Define size, title, background color
$LocalManagerForm.ClientSize = '500,300'
$LocalManagerForm.text = "Password Manager - pb.v.0"
$LocalManagerForm.BackColor = "#ffffff"

# Display form
[void]$LocalManagerForm.ShowDialog()