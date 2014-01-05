#!/bin/bash

echo "Installing git credentials..."

me=$1
creds=$2

cp shell/credentials.$creds.sh /home/$me/.credentials
chown $me:$me /home/$me/.credentials
chmod 755 /home/$me/.credentials
