#xCAT for VM

#!/bin/bash


#Updating yum and Utilities
yum install zenity -y
yum install xterm -y
yum install ntp -y
yum update -y
yum install yum-utils -y
wget -P /etc/yum.repos.d https://xcat.org/files/xcat/repos/yum/latest/xcat-core/xcat-core.repo --no-check-certificate
wget -P /etc/yum.repos.d https://xcat.org/files/xcat/repos/yum/xcat-dep/rh7/x86_64/xcat-dep.repo --no-check-certificate
yum install epel-release -y
yum clean all
yum makecache
yum install xCAT -y


#SOURCE
xcat_source="source /etc/profile.d/xcat.sh"
eval "$xcat_source"
source /etc/profile.d/xcat.sh

#xcat_dot=". /etc/profile.d/xcat.sh"
#eval "$xcat_dot"
#. /etc/profile.d/xcat.sh



#YOU HAVE TO MANUALLY SOURCE  /etc/profile.d/xcat.sh
#hostname_master=$(zenity --entry --title="source /etc/profile.d/xcat.sh" --text="xCAT has been installed successfully, type the command shown on the title on the terminal to unlock xCAT.")
#whiptail --msgbox "xCAT has been installed successfully, please copy "source /etc/profile.d/xcat.sh" and paste it on the terminal, to unlock xCAT." 10 50


#source_command=$(zenity --entry --title "Unlocking xCAT" --text "Please type source /etc/profile.d/xcat.sh and click OK to unlock xCAT")
#output=$(gnome-terminal -- bash -c "$source_command; echo -e '\nPress Enter to exit...'; read")
#zenity --text-info --title "Command Output" --width 800 --height 400 --filename=<(echo "$output")

whiptail --msgbox "xCAT has been installed successfullly. Press Enter to continue." 10 50