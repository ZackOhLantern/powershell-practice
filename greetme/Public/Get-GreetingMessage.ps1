function Get-GreetingMessage {

    param(
        [Parameter(Mandatory=$true)]
        [string]$Name
    )

    $greeting = "Hello, $Name!"

    $greetingMessage = New-Greeting
    
    Write-Output "$greeting $greetingMessage"
}