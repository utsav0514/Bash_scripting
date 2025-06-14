#!/bin/bash

function special_variable () {
    echo "The total arguments passed in the function is $#"
    
    for arg in "$@"
    do
        echo "Arg: $arg"
    done

    echo "The arguments together are: $*"

    # Run a command to show exit status example
    ls /nonexistentdirectory  # This will fail, just for demonstration

    echo "Exit status of last command: $?"

    echo "The process id of the current shell is $$"
    echo "The function name is $FUNCNAME"
    echo "The hostname of the machine is $HOSTNAME"
}

special_variable utsav sagar ujwal allen

