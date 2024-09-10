#for-each-loop-practice
cls

#for loop
$vehicles = @("cars","motorcycles","trucks","SUVs")
for ($i=0; $i -lt $vehicles.count; $i++) {
    echo ("element $i = " + $Vehicles[$i])
}


#for each loop
ForEach ($Element in $vehicles) {
    echo "Building new chassis for $element"
}
