#!/bin/bash

# Banner
clear
cat banner.txt
echo -e "\n⚡ Tools by KuberDuttSh ⚡"
echo ""
echo "==== Tool Menu ===="
echo "1) Alien Hack"
echo "2) Alien Installer"
echo "3) Install Termux Packages"
echo "4) Termux Attack"
echo "0) Exit"
echo -n $'\n#? '; read choice

case $choice in
  1)
    if [[ -f tools/alienhack.sh ]]; then
      bash tools/alienhack.sh
    else
      echo -e "\n❌ Tool 'alienhack.sh' not found!"
    fi
    ;;
  2)
    if [[ -f tools/alieninstall.py ]]; then
      python tools/alieninstall.py
    else
      echo -e "\n❌ Tool 'alieninstall.py' not found!"
    fi
    ;;
  3)
    if [[ -f tools/installtermuxpkg.sh ]]; then
      bash tools/installtermuxpkg.sh
    else
      echo -e "\n❌ Tool 'installtermuxpkg.sh' not found!"
    fi
    ;;
  4)
    if [[ -f tools/termuxattack.sh ]]; then
      bash tools/termuxattack.sh
    else
      echo -e "\n❌ Tool 'termuxattack.sh' not found!"
    fi
    ;;
  0)
    echo "👋 Exiting..."; exit 0
    ;;
  *)
    echo "❌ Invalid choice."
    ;;
esac
