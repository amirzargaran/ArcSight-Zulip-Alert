#!/bin/bash

##################################################################
#-- Script for Execution Command to Zulip via Correlation Rule --#
#-------------- Provided by: Amir.H Zargaran --------------------#
#--------------- SOC Department of Organization  ----------------#
##################################################################

#------------------------  Variables ----------------------------#

PASS="<ARC_PASS>"
DEPLOYER="<CONNECTED_TO_NET_IP>"
USER="arcsight"
STREAM="<STREAM_NAME>"

#----------------------- Main Command ---------------------------#

TEXT="/home/arcsight/.local/bin/zulip-send --stream '$STREAM' --subject '$1' --message '$2' "
export TEXT

echo -e $TEXT | sshpass -p $PASS ssh -o StrictHostKeyChecking=no $USER@$DEPLOYER

echo "Message Sent successfully!!!"