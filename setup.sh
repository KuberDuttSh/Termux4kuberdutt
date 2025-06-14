#!/data/data/com.termux/files/usr/bin/bash

# 𝗧𝗲𝗿𝗺𝘂𝘅𝟰𝗞𝘂𝗯𝗲𝗿𝗗𝘂𝘁𝘁 - Full Auto Installer
# Made with ❤️ by KuberDuttSh

clear
echo -e "\e[1;92m🚀 Starting Termux4kuberdutt Installation...\e[0m"
sleep 1

echo -e "\n📦 Updating Termux packages..."
pkg update -y && pkg upgrade -y

echo -e "\n🛠️ Installing dependencies..."
pkg install -y git python python2 bash figlet toilet termux-api

echo -e "\n📁 Making tools executable..."
chmod +x tools/*
mkdir -p $PREFIX/bin

echo -e "\n🔗 Linking tools to Termux path..."
for tool in tools/*; do
  toolname=$(basename "$tool")
  cp "$tool" $PREFIX/bin/${toolname%.*}
done

echo -e "\n🌟 Installing auto-start menu on termux open..."
echo "cd \$HOME/Termux4kuberdutt && bash menu.sh" >> $HOME/.bashrc

echo -e "\n🎨 Showing banner..."
cat banner.txt | lolcat

echo -e "\n🎯 Launching menu..."
sleep 1
bash menu.sh
