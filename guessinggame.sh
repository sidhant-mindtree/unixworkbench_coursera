#!/usr/bin/env bash

function guess(){
    answer=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Enter your guess:"
        read  number
        if [ $number -lt $answer ]
        then
            echo "The entered guess is less than the true number"
        elif [ $number -gt $answer ]
        then
            echo "The entered guess is higher than the true number"
        else
            echo " The entered guess is correct--CONGRATULATIONS!!!"
        break;
        fi
    done
}
echo "Guess the number of files in the current directory:"
guess
