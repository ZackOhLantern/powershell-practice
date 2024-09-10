#loop breaks practice
cls

$array = @("Honda","Toyota","Ford","Chevy")
foreach($element in $array) {
    if ($element -eq "Ford") { continue}
    $element
}