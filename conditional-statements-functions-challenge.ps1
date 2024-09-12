# Conditional statements and functions challenge
cls

function mainmenu{
    
    echo "please select a sub-menu below:
    1) Options Menu
    2) Settings Menu
    3) Quit"

    switch ($userinput){
        1{}
        2{}
        3{}
        default{ "You did not choose a valid option"}
    }

    switch (read-host){
        1{ 
            cls
            $userinput = 3
            optmenu
        }
        2{ 
            cls
            $userinput = 3
            setmenu
        }
        3{ 
            cls
            $userinput = 3
            exit
        }
        default{
            cls
            $userinput = 4
            mainmenu
        }
    }
}

function optmenu{
    cls
    echo "please select an option below:
    1) Option 1
    2) Option 2
    3) Go Back"

    switch ($userinput){
        1{echo "You chose option 1"}
        2{echo "You chose option 2"}
        3{}
        default{ "You did not choose a valid option"}
    }

    switch (read-host){
        1{
            cls
            $userinput = 1
            optmenu
        }
        2{
            cls
            $userinput = 2
            optmenu
        }
        3{
            cls
            $userinput = 3
            mainmenu
        }
        default {
            cls
            $userinput = 4
            optmenu
        }
    }
}

function setmenu{
    cls
    echo "please select a setting below:
    1) setting 1
    2) setting 2
    3) Go Back"

    switch ($userinput){
        1{echo "You chose setting 1"}
        2{echo "You chose setting 2"}
        3{}
        default{ "You did not choose a valid setting"}
    }

    switch (read-host){
        1{
            cls
            $userinput = 1
            setmenu
        }
        2{
            cls
            $userinput = 2
            setmenu
        }
        3{
            cls
            $userinput = 3
            mainmenu
        }
        default {
            cls
            $userinput = 4
            setmenu
        }
    }
}

$userinput = 1
mainmenu