# Import necessary .NET types for Windows Forms
Add-Type -AssemblyName System.Windows.Forms

# Create the form
$LocalManagerForm = New-Object system.Windows.Forms.Form

# Define size, title, background color
$LocalManagerForm.ClientSize = '500,300'
$LocalManagerForm.text = "Passkey"
$LocalManagerForm.BackColor = "#ffffff"

# Create a button to add password
$AddPasswordButton = New-Object System.Windows.Forms.Button
$AddPasswordButton.Location = New-Object System.Drawing.Point(200, 200)
$AddPasswordButton.Size = New-Object System.Drawing.Size(100, 30)
$AddPasswordButton.Text = "Add Password"

# Create text boxes and labels for username and password
$UsernameLabel = New-Object System.Windows.Forms.Label
$UsernameLabel.Location = New-Object System.Drawing.Point(100, 50)
$UsernameLabel.Size = New-Object System.Drawing.Size(80, 20)
$UsernameLabel.Text = "Username:"

$UsernameTextBox = New-Object System.Windows.Forms.TextBox
$UsernameTextBox.Location = New-Object System.Drawing.Point(200, 50)
$UsernameTextBox.Size = New-Object System.Drawing.Size(180, 20)

$PasswordLabel = New-Object System.Windows.Forms.Label
$PasswordLabel.Location = New-Object System.Drawing.Point(100, 90)
$PasswordLabel.Size = New-Object System.Drawing.Size(80, 20)
$PasswordLabel.Text = "Password:"

$PasswordTextBox = New-Object System.Windows.Forms.TextBox
$PasswordTextBox.Location = New-Object System.Drawing.Point(200, 90)
$PasswordTextBox.Size = New-Object System.Drawing.Size(180, 20)
$PasswordTextBox.UseSystemPasswordChar = $true

# Add controls to the form
$LocalManagerForm.Controls.Add($AddPasswordButton)
$LocalManagerForm.Controls.Add($UsernameLabel)
$LocalManagerForm.Controls.Add($UsernameTextBox)
$LocalManagerForm.Controls.Add($PasswordLabel)
$LocalManagerForm.Controls.Add($PasswordTextBox)

# Define event handler for button click
$AddPasswordButton.Add_Click({
    # Retrieve the entered username and password
    $Username = $UsernameTextBox.Text
    $Password = $PasswordTextBox.Text

    # Output the credentials for demonstration (in practice, store them securely)
    [System.Windows.Forms.MessageBox]::Show("Username: $Username`nPassword: $Password", "Stored Credentials")

    # Clear the text boxes after storing the credentials
    $UsernameTextBox.Clear()
    $PasswordTextBox.Clear()
})

# Display the main form
[void]$LocalManagerForm.ShowDialog()
