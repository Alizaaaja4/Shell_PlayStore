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

add_aplikasi(){
    echo "================================="
    echo "||        Add Aplikasi         ||"
    echo "================================="
    echo "Nama Aplikasi: "
    read nama_apk

    echo ""
    echo "Versi Aplikasi: "
    read versi_apk

    echo ""
    echo "Deksripsi Aplikasi: "
    read deks_apk

    echo ""
    echo "IDR?"
    read idr_apk

    echo "$nama_apk | $versi_apk | $deks_apk | $idr_apk" >> daftar_apk.txt

    echo ""
    read -p "loading..."

    echo ""
    echo "Aplikasi berhasil ditambahkan!!"

    read -p "press to continue..."
    clear
    show_admin
}

list_aplikasi(){
    echo "================================="
    echo "||       Daftar Aplikasi       ||"
    echo "================================="

    cat daftar_apk.txt

    echo ""
    read -p "Press to continue..."
    clear

    show_admin
}

delate_aplikasi(){
    echo "================================="
    echo "||       Delete Aplikasi        ||"
    echo "================================="

    echo -n "Hapus baris line (1-999): "
    read delete_line

    sed -i "${delete_line}d" daftar_apk.txt

    echo ""  
    echo "Aplikasi berhasil dihapus"
    read -p "Press to continue..."
    clear  

    show_admin
}

show_admin(){
    echo "================================="
    echo "||        Welcome Admin        ||"
    echo "================================="
    echo "|| [1]. Add Aplikasi           ||"
    echo "|| [2]. List Aplikasi          ||"
    echo "|| [3]. Delete Aplikasi        ||"
    echo "|| [4]. Logout                 ||"
    echo "================================="
    echo -n "/> "
    read option

    if [ "$option" -eq 1 ]; then
        read -p "press to continue..."
        clear
        add_aplikasi

    elif [ "$option" -eq 2 ]; then
        read -p "press to continue..."
        clear
        list_aplikasi

    elif [ "$option" -eq 3 ]; then
        read -p "press to continue..."
        clear
        delate_aplikasi
    
    elif [ "$option" -eq 4 ]; then
        read -p "press to continue..."
        clear
        show_menu

    else
        read -p "Maaf perintah tidak valid..."
        clear
        show_admin

    fi
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


