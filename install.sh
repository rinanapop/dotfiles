# update apt 
sudo apt udpate

# install gcc
sudo apt install build-essential -y

# install sanpd
sudo apt install snapd -y

# install neovim
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim -y

# clone from neovim-from-scratch
git clone https://github.com/LunarVim/Neovim-from-scratch.git ~/.config/nvim

# install nerd-fonts()
mkdir $HOME/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip -P $HOME/.fonts
unzip Hack.zip
rm Hack.zip
fc-cache -fv

# install power-line
sudo apt-get install python3-pip -y
sudo pip3 install powerline-status -y
sudo apt-get install fonts-powerline -y
sudo add-apt-repository universe
sudo apt install powerline -y

# install applications from snap
sudo snap install discord
sudo snap install spotify

# install brave
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-beta-archive-keyring.gpg https://brave-browser-apt-beta.s3.brave.com/brave-browser-beta-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-beta-archive-keyring.gpg arch=amd64] https://brave-browser-apt-beta.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-beta.list
sudo apt update
sudo apt install brave-browser-betak

# install and apply dotfiles
sudo apt isntall git -y
git clone -b main https://github.com/rinanapop/dotfiles.git $HOME/Documents/
ln -sf $HOME/Documents/dotfiles/.bash_aliases $HOME/.bash_aliases
ln -sf $HOME/Documents/dotfiles/.bashrc $HOME/.bashrc
ln -sf $HOME/Documents/dotfiles/.profile $HOME/.profile
ln -sf $HOME/Documents/dotfiles/.vimrc $HOME/.vimrc
