

function New-Greeting {

    # Declare a message greetings
    $greetings = @(
        "Powershell modules are very cool!",
        "I am glad you are learning ab out PowerShell modules!",
        "PS Modules are the best!"
    )

    # Get a random message
    $greeting = $greetings | Get-random

    # Return the greeting
    return $greeting
}