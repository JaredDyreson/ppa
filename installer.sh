#!/usr/bin/env bash

# Script to instaniate any Ubuntu server to be the Tuffix PPA server
# AUTHOR: Jared Dyreson
# SOURCE: https://www.digitalocean.com/community/tutorials/how-to-install-the-apache-web-server-on-ubuntu-20-04

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

function install_apache(){
    export DEST="/var/www/html/repo"
    apt update
    apt upgrade -y
    apt install nginx certbot python3-certbot-nginx

    #apt install apache2

    #[[ "$(ufw app list | grep "Apache" | wc -l)" -ne 3 ]] && apache_err_
    #apt ufw allow 'Apache'
    #[[ "$(ufw status | awk '/Status/ {print $2}')" != "active" || "$(systemctl status apache2 | awk '/Active/ {print $2}')" != "active" ]] && apache_err_
    #echo "[INFO] Your IP Address is: $(hostname -I)"
    git clone https://github.com/JaredDyreson/ppa.git "$DEST"
    cd "$DEST"
    git checkout devbranch

}

[[ "$(whoami)" != "root" ]] && err_
[[ "$(lsb_release -sc)" ]] || aarch_err_
install_apache
