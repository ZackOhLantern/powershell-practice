
$first = read-host "enter first name"
$last = read-host "enter last name"
$longdate = get-date
$date = Get-Date -format DDMMYYYY-HHMMSS
$date += $first,$last,'.txt'

$filepath = 'C:\code practice\' + $date

New-Item -ItemType file -path 'C:\code practice\' -name $date
Add-Content -Path $filepath -Value $first
Add-Content -Path $filepath -Value $last
Add-Content -Path $filepath -Value $longdate
