cls

#Load necessary assemblies
Add-type -AssemblyName System.windows.forms

# Create OpenFileDialog object
$openFileDialog = New-Object System.Windows.Forms.OpenFileDialog

# Set OpenFiledialog properties (optional)
$openFileDialog.Title = "Select a file"
$openFileDialog.Filter = "CSV Files (*.csv)|*.csv|JSON Files (*.json)|*.json"
$openFileDialog.InitialDirectory = "C:\"

# Show the OpenFileDialog and get the result
$dialogResult = $openFileDialog.ShowDialog()





# Check if the user clicked 'Open' (OK)
if($dialogResult -eq "OK") {
    $SelectedFile = $openFileDialog.FileName
    Write-Host "You have selected the following file: $selectedFile"


    if($selectedfile.contains('.csv')) {

        #  Import CSV Data

        $csvData = Import-Csv -Path $SelectedFile

        #  Inspect data with OGV

        $csvData | Out-GridView

        $csvData | Format-table

        #  Get new user info

        $firstName = Read-Host "Enter the new user's first name"
        $LastName = Read-Host "Enter the new user's Last Name"
    
        #  Create Power Shell Custom Object with new user info

        $newuser = [PSCustomObject] @{
            FirstName = $firstName
            LastName = $LastName
        }

        #  Add user to array
    
        $csvData += $newUser
    
        #  Save data back to CSV

        $csvData | Export-Csv -Path $selectedFile -NoTypeInformation -Force

        # Output to the console
        $csvData | Format-table

    }elseif($selectedfile.contains('.json')){



        #  Import JSON Data
        $jsonData = Get-Content -Path $selectedfile | ConvertFrom-Json
        # TODO Inspect data with OGV
        $jsonData | ogv

        $jsondata | Format-table

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
        $jsondata | Format-table

    }else{
            Write-Host "no file was selected."
    }
}