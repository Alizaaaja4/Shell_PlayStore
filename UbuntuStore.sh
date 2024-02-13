#!/bin/bash

login_admin(){
    data_use="linux"
    data_pass="2024"

    echo "================================="
    echo "||         SignIn Admin        ||"
    echo "================================="
    echo -n "Username: "
    read userAdmin 

    echo -n "Password: "
    read passAdmin

    if [[ $userAdmin == $data_use && $passAdmin == $data_pass ]]
    then
        echo ""
        echo "Akses diterima!!"
        read -p "press to continue..."
        clear
        show_admin
    else
        echo ""
        echo "Akses ditolak!!"
        read -p "press to continue..."
        clear
        show_menu
    fi
}

show_admin(){
    echo "================================="
    echo "||        Welcome Admin        ||"
    echo "================================="
    echo "|| [1]. Add Aplikasi           ||"
    echo "|| [2]. List Aplikasi          ||"
    echo "|| [3]. Delate Aplikasi        ||"
    echo "|| [4]. Logout                 ||"
    echo "================================="
}

show_menu(){
    echo "================================="
    echo "||      Ubuntu Store Linux     ||"
    echo "================================="
    echo "|| [1]. Administrator          ||"
    echo "|| [2]. Customer               ||"
    echo "================================="
    echo -n "/> "

    read option
    if [ $option -eq 1 ]
    then 
        read -p "press to continue..."
        clear
        login_admin
    else 
        echo 'hallo user'
    fi
}

show_menu


