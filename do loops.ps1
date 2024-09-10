cls

$i=0
do {
    $i++
} while ($i -lt 5)
echo "value of i = $i"

$i=0
while ($i -lt 5) {
    $i++
}
echo "Value of i = $i"

$i=0
do {
    $i++
} until ($i -eq 5)
echo "Value of i = $i"
