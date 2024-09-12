#powershell functions
cls

Function EchoText {
    echo "argument:" + $args
    
}

EchoText "I am passing an argument" "this is the  2nd argument"


Function add{
    echo ($args[0] + $args[1])
}

Add 5 10



Function EchoParameters{
    param (
        $firstParameter,
        $SecondParameter
    )
    echo ("First: " + $firstParameter)
    echo ("Second: " + $SecondParameter)
}

EchoParameters -SecondParameter "This is the second" -firstParameter "This is the first"


Function EchoText2 ($FirstParameter, $secondparameter) {
    echo ("First: " + $FirstParameter)
    echo ("Second: " +$secondparameter)
}

Echotext2 -FirstParameter "abc" -secondparameter "xyz"