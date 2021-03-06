# This file is used to automatically put launch icon on desktop and perform all needed configuration and typing sudo
# password only once after each reboot. Initial install and other preparation is required before use of this method.
#######################################################################################################################
#######################################################################################################################
########################################## Begin Script ###############################################################

#!/bin/bash
 
# https://pastebin.com/GELGxku8
######################################################################################
##                            IMPORTANT !!!                                         ##
#  DO NOT USE THIS SCRIPT until files are modified and saved in appropriate places.  #
######################################################################################
 
# Start_DO-wallet.sh
# To be run after each reboot to perform prepatory changes of firewall
# and menu item link and start wallet with previously saved settings.
# Original content from content by @nezero
# Firewall changes from content by @dragononcrypto
 
# https://youtu.be/EPpn9lPb0aA
 
#  The files for this script must be pre-modified and pre-positioned to be copied
#  to apropriate places.
#  Important dirs are:
#  /home/amnesia/Persistent/.DeepOnion
#  /home/amnesia/Persistent/.DeepOnion/ferm
#  Important files to have modified:
#  ferm.conf
#  DeepOnion-qt.desktop
#  DeepOnion-Qt.conf  (This file should ONLY be modified from within the wallet
#                     and then copied to /home/amnesia/Persistent/.DeepOnion/ )
#
######################################################################################
##                            IMPORTANT !!!                                         ##
#  DO NOT USE THIS SCRIPT until files are modified and saved in appropriate places.  #
######################################################################################
###
echo "Wait for TOR to connect and press any key to continue.  "
cp /home/amnesia/Persistent/scripts/DeepOnion-qt.desktop /home/amnesia/Desktop/DeepOnion-qt.desktop
gio set /home/amnesia/Desktop/DeepOnion-qt.desktop metadata::trusted yes
chmod +x /home/amnesia/Desktop/DeepOnion-qt.desktop
read -n 1 -s
# mkdir /home/amnesia/.config/DeepOnion
# cp /home/amnesia/Persistent/.DeepOnion/DeepOnion-Qt.conf /home/amnesia/.config/DeepOnion/DeepOnion-Qt.conf
sudo /home/amnesia/Persistent/scripts/startup2.sh
## sudo cp /home/amnesia/Persistent/.DeepOnion/DeepOnion-qt.desktop /usr/share/applications/DeepOnion-qt.desktop && cp /home/amnesia/Persistent/.DeepOnion/ferm/ferm.conf /etc/ferm/ferm.conf && ferm /etc/ferm/ferm.conf
 
### Overwrite the stock firewall rules to allow DeepOnion and restart firewall
## sudo cp /home/amnesia/Persistent/.DeepOnion/ferm/ferm.conf /etc/ferm/ferm.conf
## sudo ferm /etc/ferm/ferm.conf

########################################################################################
########################################################################################
########################################################################################

#!/bin/bash

sudo cp /home/amnesia/Persistent/.DeepOnion/DeepOnion-qt.desktop /usr/share/applications/DeepOnion-qt.desktop && cp /home/amnesia/Persistent/.DeepOnion/ferm/ferm.conf /etc/ferm/ferm.conf && ferm /etc/ferm/ferm.conf

#

########################################################################################
########################################################################################
########################################################################################

[Desktop Entry]
Version=1.0
Encoding=UTF-8
Name=DeepOnion Qt
Comment=The GUI version of the DeepOnion wallet.
Exec=torsocks DeepOnion-qt -datadir=/home/amnesia/Persistent/.DeepOnion
Icon=/home/amnesia/Persistent/scripts/onion2.jpg
Type=Application
Categories=Internet;
