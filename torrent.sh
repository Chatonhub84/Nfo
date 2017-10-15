#!/bin/bash
# Nom du script .. : torrent.sh
# Date ........... : 06.2016
# Version......... : 1.0
# Auteur ......... : pcccp
# Description .... : Création .torrent automatique
# Prerequis ...... : mktorrent
# Execution ...... : "sh torrent.sh"



ls >>temp.txt
while read ligne  
do  
mktorrent -a "url de votre annonce" -p -l 20 "$ligne"
done < temp.txt
rm temp.txt
