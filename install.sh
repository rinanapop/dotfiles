#!/bin/bash

app_list=(
  "Neovim(Lua)"\
  "Powerline"\
  "Brave"\
  "NPM"\
  "Fish Shell")

function show_list() {
    echo -e "\e[34m==========================================\e[m"
    i=1
    for v in "${app_list[@]}"
    do
      echo "$i: $v"
      let i++
    done

    echo -e "\e[31ma\e[m: Above all (Press Enter to select this)"
    echo -e "\e[31mq\e[m: Quit"

}

function color_encloser() {
  CHAR_NUM=${#1}+8
  for ((i=0; i<$CHAR_NUM; i++)); do
    echo -n -e "\e[34m=\e[m"
  done

  echo ""
  echo -n -e "\e[34m===\e[m" $1 "\e[34m===\e[m"
  echo ""

  for ((i=0; i<$CHAR_NUM; i++)); do
    echo -n -e "\e[34m=\e[m"
  done
  echo ""
}

function yes_or_no() {
  while true; do
    echo -n -e "$1 [\e[33my\e[mes/\e[33mn\e[mo]: "
    read ANS
    case $ANS in 
      [Yy]* ) return 0 ;;
      "" ) return 0 ;;
      [Nn]* ) return 1 ;;
      * ) echo "Please enter y or n " ;;
    esac
  done
  }

## Start installation
clear
echo -e "\e[34m==========================================\e[m"
echo -e "\e[34m __      _____| | ___ ___  _ __ ___   ___ \e[m"
echo -e "\e[34m \ \ /\ / / _ \ |/ __/ _ \| '_ ' _ \ / _ \ \e[m"
echo -e "\e[34m  \ V  V /  __/ | (_| (_) | | | | | |  __/\e[m"
echo -e "\e[34m   \_/\_/ \___|_|\___\___/|_| |_| |_|\___|\e[m"
echo ""
echo -e "\e[34m==== Welcome to rinanapop's Installer ====\e[m"
echo "
Installation could take several minutes.
To avoid any system malfunctions, please do not turn offdevice
or interrupt the installation process in any way.
"

if yes_or_no "Would you like to enter?"; then
  while true; do
    clear
    show_list
    read -p "Which one would you like to install?: " ORDER

    case "$ORDER" in
      # neovim(lua)
      1) sudo add-apt-repository ppa:neovim-ppa/unstable
         sudo apt-get udpate 
         sudo apt-get install neovim -y
         sudo apt install build-essential -y
         sudo clone -b main https://github.com/rinanapop/neovim-lua.git $HOME/.config/nvim
         mkdir $HOME/.fonts
         wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip -P $HOME/.fonts
         unzip $HOME/.fonts/SourceCodePro.zip -d $HOME/.fonts
         rm $HOME/.fonts/SourceCodePro.zip
         fc-cache -fv
      ;;

      # powerline
      2) sudo apt-get install python3-pip -y
         sudo pip3 install powerline-status -y
         sudo apt-get install fonts-powerline -y
         sudo add-apt-repository universe
         sudo apt install powerline -y
      ;;

      # brave
      3) sudo apt install apt-transport-https curl
         sudo curl -fsSLo /usr/share/keyrings/brave-browser-beta-archive-keyring.gpg https://brave-browser-apt-beta.s3.brave.com/brave-browser-beta-archive-keyring.gpg
         echo "deb [signed-by=/usr/share/keyrings/brave-browser-beta-archive-keyring.gpg arch=amd64] https://brave-browser-apt-beta.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-beta.list
         sudo apt update
         sudo apt install brave-browser-betak
      ;;

      # npm
      4) sudo apt install npm -y
      ;;

      # fish-shell
      5) sudo apt-add-repository ppa:fish-shell/release-3
         sudo apt-get update -y && sudo apt-get upgrade -y
         sudo apt-get install fish -y
         # install fisher
         curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
      ;;

      q) color_encloser "Thank you for using!"
         break
      ;;

      a) echo "function for install all"
      ;;

      *) clear
         color_encloser "Non selectable"
         read -p "Press Enter to continue..."
      ;;
    esac
  done
else
  color_encloser "Thank you for using! Good bye!"
fi
