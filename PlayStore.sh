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

search_apk_player(){
    echo "================================="
    echo "||       Search Aplikasi       ||"
    echo "================================="

    cat daftar_apk.txt

    echo ""
    read -p "press to continue..."
    clear

    show_player
}

Install_apk_player(){
    echo "================================="
    echo "||      Install Aplikasi       ||"
    echo "================================="

    cat daftar_apk.txt

    echo ""
    echo "Nomor baris yang ingin ada install: "
    read install

    sed -n "${install}p" daftar_apk.txt >> file_unduh.txt

    echo ""
    echo "aplikasi berhasil di install"
    read -p "press to continue..."
    clear

    show_player    
}

uninstall_apk_player(){
    echo "================================="
    echo "||     Uninstall Aplikasi      ||"
    echo "================================="

    cat file_unduh.txt

    echo ""
    echo -n "Uninstall line (1-999): "
    read uninstall

    sed -i "${uninstall}d" file_unduh.txt

    echo ""
    echo "Aplikasi berhasil di uninstall!!"
    read -p "press to continue..."
    clear

    show_player
}

view_apk_player(){
    echo "================================="
    echo "||         View Player         ||"
    echo "================================="

    cat file_unduh.txt

    echo ""
    read -p "Press to continue..."
    clear

    show_player
}

show_player(){
    echo "================================="
    echo "||        Welcome Player       ||"
    echo "================================="
    echo "|| [1]. Search Aplikasi        ||"
    echo "|| [2]. Install Aplikasi       ||"
    echo "|| [3]. Uninstall Aplikasi     ||"
    echo "|| [4]. View Aplikasi          ||"
    echo "|| [5]. Logout                 ||"
    echo "================================="
    echo -n "/> "
    read option

    if [ "$option" -eq 1 ]; then
        read -p "press to continue..."
        clear
        search_apk_player
    
    elif [ "$option" -eq 2 ]; then
        read -p "press to continue..."
        clear
        Install_apk_player
    
    elif [ "$option" -eq 3 ]; then
        read -p "press to continue..."
        clear
        uninstall_apk_player

    elif [ "$option" -eq 4 ]; then
        read -p "press to continue..."
        clear
        view_apk_player

    elif [ "$option" -eq 5 ]; then
        read -p "press to continue..."
        clear
        show_menu
    
    else
        echo "option tidak valid"
        echo -p "press to continue..."
        clear

        show_player
    fi 
}

signIn_player(){
    player_user="player"
    player_email="allUbuntu@gmail.com"
    player_pass="000"
    
    echo "================================="
    echo "||        Sign In Player       ||"
    echo "================================="
    echo -n "Username: "
    read user_player

    echo ""
    echo -n "Email: "
    read email_player

    echo ""
    echo -n "Password: "
    read pass_player

    if [[ $user_player == $player_user && $email_player == $player_email && $pass_player == $player_pass ]]; then    
        echo ""
        echo "Akses diterima!!"
        read -p "press to continue..."
        clear
        show_player
    
    else
        echo ""
        echo "Akses ditolak"
        read -p "press to continue..."
        clear
        show_menu
    
    fi
}

show_menu(){
    echo "================================="
    echo "||       PlayStore Linux       ||"
    echo "================================="
    echo "|| [1]. Administrator          ||"
    echo "|| [2]. Customer               ||"
    echo "|| [3]. Logout                 ||"
    echo "================================="
    echo -n "/> "

    read option
    if [ "$option" -eq 1 ]; then 
        read -p "press to continue..."
        clear
        login_admin
    
    elif [ "$option" -eq 2 ]; then
        read -p "press to continue..."
        clear
        signIn_player
    
    elif [ "$option" -eq 3 ]; then
        read -p "press to continue..."
        clear
        echo "Logout Success!!!"

    else 
        read -p "Maaf perintah tidak valid..."
        clear
        show_menu
        
    fi
}

show_menu


