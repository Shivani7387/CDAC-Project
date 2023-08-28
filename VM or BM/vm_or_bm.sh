#!/bin/bash


chmod +x aab.sh vm_xCAT.sh bm_xCAT.sh

choice=$(zenity --list --text "Select an option:" --radiolist --column "Select" --column "Option" TRUE "Virtual Machine" FALSE "Bare-metal")


case "$choice" in
    "Virtual Machine")
        ./vm_xCAT.sh
        ;;
    "Bare-metal")
        ./bm_xCAT.sh
        ;;
esac