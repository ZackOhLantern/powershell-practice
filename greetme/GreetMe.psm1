# Variables
$modulePublicPath = Join-Path $PSScriptRoot "Public"
$modulePrivatePath = Join-Path $PSScriptRoot "Private"

# Import all private functions
# These will not be exported, which means they are NOT accessible outside the module

Get-ChildItem -Path $modulePrivatePath -Filter "*.ps1" | Foreach-Object {
    # Dot source the file to import its functions
    . $_.FullName
}

# Import and export functions from the public folder
Get-ChildItem -Path $modulePublicPath -Filter "*.ps1" | Foreach-Object {
    # Dot source the file to import its functions
    . $_.FullName

    # #xport the functions so they are available outside the module
    Export-ModuleMember -Function $_.BaseName 
}