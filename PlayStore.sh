#!/bin/bash

show_menu(){
    echo "================================="
    echo "||       PlayStore Linux       ||"
    echo "================================="
    echo "|| [1]. Administrator          ||"
    echo "|| [2]. Customer               ||"
    echo "================================="
    echo -n "/> "

    read option
    if [ $option -eq 1 ]
    then 
        echo 'Hallo admin'
    else 
        echo 'hallo user'
    fi
}

show_menu


