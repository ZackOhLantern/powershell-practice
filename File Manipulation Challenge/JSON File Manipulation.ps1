# Load necessary assemblies
Add-Type -AssemblyName System.Windows.Forms

# Create OpenFileDialog object
$openFileDialog = New-Object System.Windows.Forms.OpenFileDialog

# Set OpenFiledialog properties (optional)
$openFileDialog.Title = "Select a file"
$openFileDialog.Filter = "All Files (*.*)|*.*|Text Files (*.txt)|*.txt|CSV Files (*.csv)|*.csv|JSON Files (*.json)|*.json" #TODO Add JSON File Support
$openFileDialog.InitialDirectory = "C:\"

# Show the OpenFileDialog and get the result
$dialogResult = $openFileDialog.ShowDialog()

# Check if the user clicked 'Open' (OK)
if($dialogResult -eq "OK") {
    $SelectedFile = $openFileDialog.FileName
    Write-Host "You have selected the following file: $selectedfile"

       #  Import JSON Data
       $jsonData = Get-Content -Path $selectedfile | ConvertFrom-Json
       # TODO Inspect data with OGV
       $jsonData | ogv

       #  Get new user info
       $firstname = Read-Host "Enter the new user's first name"
       $lastname = Read-host "enter the new users last name"

       # Create Powr Shell Custom Object with new user info
       $newUser = [PSCustomObject] @{
            FirstName = $firstName
            LastName = $LastName
       }

       #  Add user to array
       $jsonData += $newUser

       #  Save data back to JSON File
       $jsondata | ConvertTo-Json | set-content -path $SelectedFile

       #  Output to the console
       Write-Host "New user $firstname $lastname was added to JSON file"

    } else {
        Write-Host "no file was selected."
    }
