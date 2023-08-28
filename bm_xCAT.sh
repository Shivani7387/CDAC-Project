#xCAT installation on bare metal


#!/bin/bash


#Updating yum and Utilities
yum install zenity -y
yum install xterm -y
yum install ntp -y
yum update -y
yum install yum-utils -y
yum install epel-release -y


#Making xcat directory which will contain xcat-core and xcat-dep
mkdir -p ~/xcat
cd ~/xcat/

#downloading xCAT
wget https://raw.githubusercontent.com/xcat2/xcat-core/master/xCAT-server/share/xcat/tools/go-xcat -O - >/tmp/go-xcat
chmod +x /tmp/go-xcat

#This will install xcat
/tmp/go-xcat install -y
wget https://xcat.org/files/xcat/xcat-core/2.16.x_Linux/xcat-core/xcat-core-2.16.5-linux.tar.bz2
wget https://xcat.org/files/xcat/xcat-dep/2.x_Ubuntu/?C=M;O=D
wget https://xcat.org/files/xcat/xcat-dep/2.x_Linux/xcat-dep-202212061505.tar.bz2

#Extracting xcat-core
tar xvf xcat-core-2.16.5-linux.tar.bz2
tar jxvf xcat-dep-202212061505.tar.bz2
cd ~/xcat/xcat-core
./mklocalrepo.sh

# Inside xcat-dep

cd ~/xcat/xcat-dep/
cd rh7
cd ppc64le/
./mklocalrepo.sh


#yum install xCAT -y
#chmod 777 /etc/profile.d/xcat.sh


#SOURCE
xcat_source="source /etc/profile.d/xca+t.sh"
eval "$xcat_source"
source /etc/profile.d/xcat.sh

#xcat_dot=". /etc/profile.d/xcat.sh"
#eval "$xcat_dot"
#. /etc/profile.d/xcat.sh



#YOU HAVE TO MANUALLY SOURCE  /etc/profile.d/xcat.sh
#hostname_master=$(zenity --entry --title="source /etc/profile.d/xcat.sh" --text="xCAT has #been installed successfully, type the command shown on the title on the terminal to unlock xCAT.")
whiptail --msgbox "xCAT has been installed successfully, Press OK to continue." 10 50
