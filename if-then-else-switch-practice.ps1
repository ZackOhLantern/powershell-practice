#practicing if-then-else-switch statements
cls



$myvar1 = 1
$myvar2 = 2


#if-else
if ($myvar1 -gt $myvar2) {
    echo "I like hotdogs" 
} else {
    "I dislike hotdogs" }




$choice = read-host "please select an option (1-2)"

#elseif
if ($choice -eq 1) {
    echo "you chose option 1"
} elseif ($choice -eq2) {
    echo "you chose option 2"
} elseif ($choice -eq3) {
    echo "you chose option 3"
} else { 
    echo "you did not choose a valid option"
}



# switch statement

switch (read-host "please select an option (1-3)"){
    1 {"you chose option 1"}
    2 {"you chose option 2"}
    3 {"you chose option 3"}
    default {"you did not choose a valid option"}
}

