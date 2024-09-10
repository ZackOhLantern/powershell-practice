cls

while(($userinput) -ne "quit"){
    # gather user input
    $userInput = read-host "say yes if you like scripting (enter 'quit' to stop the loop)"

    #evaluate user input
    if($userinput -eq "yes") { echo "I also love scripting! that's cool" }
    elseif($userinput -eq "no") { echo "I really hate scripting too!"}
}

$userinput = $null