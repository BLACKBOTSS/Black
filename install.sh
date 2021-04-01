#!/usr/bin/env bash
cd $HOME/OKEN
install() {
rm -rf $HOME/.telegram-cli
sudo chmod +x tg
chmod +x OKEN
chmod +x ts
./ts
}
get() {
rm -fr OKEN.lua
rm -fr sudo.lua
wget "https://raw.githubusercontent.com/OKEN/OKEN/master/OKEN.lua"
lua start.lua
}
installall(){
apt update
apt upgrade
apt install dnsutils
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install tmux
sudo apt-get install luarocks
sudo apt-get install screen
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev
sudo apt-get update
sudo apt-get install
sudo apt-get install upstart-sysv
wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz;tar zxpf luarocks-2.2.2.tar.gz;cd luarocks-2.2.2 && ./configure
sudo make bootstrap
sudo luarocks install luasocket
sudo luarocks install luasec
sudo apt-get install libconfig++9v5 -y 
sudo apt-get install libstdc++6 -y
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y 
sudo apt-get install lua-lgi -y  
sudo apt-get install libnotify-dev -y 
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev -y
sudo apt-get update 
sudo apt-get upgrade -y
}
if [ "$1" = "ins" ]; then
install
fi
if [ "$1" = "get" ]; then
get
fi
installall
cd ..
rm -rf luarocks*
cd OKEN
rm -rf luarocks*
lua start.lua


