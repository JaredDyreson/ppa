#!/usr/bin/env bash

# Script to instaniate any Ubuntu server to be the Tuffix PPA server
# AUTHOR: Jared Dyreson
# SOURCE: https://www.youtube.com/watch?v=OWAqilIVNgE

function aarch_err_(){
    echo "[ERROR] Incorrect architecture, detected: $(uname -r)" 
    exit
}

function err_(){
    echo "[ERROR] Please run this script as root"
    exit
}

function apache_err_(){
    echo "[ERROR] Apache did not install correctly"
    exit
}

function install_nginx(){
    export DEST="/var/www/html/cabin"
    apt update
    apt upgrade -y
    apt install nginx certbot python3-certbot-nginx

    wget -q -O - https://raw.githubusercontent.com/JaredDyreson/ppa/devbranch/nginx-default-conf > /etc/nginx/sites-available/cabin
    ln -s /etc/nginx/sites-available/cabin /etc/nginx/sites-enabled/
    git clone https://github.com/JaredDyreson/ppa.git "$DEST"
    cd "$DEST"
    git checkout devbranch

}

[[ "$(whoami)" != "root" ]] && err_
[[ "$(lsb_release -sc)" ]] || aarch_err_
install_nginx
