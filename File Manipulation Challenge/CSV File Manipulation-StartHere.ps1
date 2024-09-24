#Load necessary assemblies
Add-type -AssemblyName System.windows.forms

# Create OpenFileDialog object
$openFileDialog = New-Object System.Windows.Forms.OpenFileDialog

# Set OpenFiledialog properties (optional)
$openFileDialog.Title = "Select a file"
$openFiledialog.Filter = "All Files (*.*)|*.*|Text Files (*.txt)|*.txt|CSV Files(*.csv)|*.csv"
$openFileDialog.InitialDirectory = "C:\"

# Show the OpenFiledialog and get the result
$dialogResult = $openFileDialog.ShowDialog()

# Check if the user clicked 'Open' (OK)
if($dialogResult -eq "OK") {
    $SelectedFile = $openFileDialog.FileName
    Write-Host "You have selected the following file: $selectedFile"

    #  Import CSV Data

    $csvData = Import-Csv -Path $SelectedFile

    #  Inspect data with OGV

    $csvData | Out-GridView

    #  Get new user info

    $firstName = Read-Host "Enter the new user's first name"
    $LastName = Read-Host "Enter the new user's Last Name"

    #  Create Power Shell Custom Object with new user info

    $newuser = [PSCustomObject] @{
        FirstName = $firstName
        LastName = $LastName
    }

    # TODO Add user to array
    
    $csvData += $newUser
    
    # TODO Save data back to CSV

    $csvData | Export-Csv -Path $selectedFile -NoTypeInformation -Force

    # Output to the console
    Write-Host "New user $firstname $lastname was successfully added to the CSV File"
}