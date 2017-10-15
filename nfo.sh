#!/bin/bash
# Nom du script .. : nfo.sh
# Date ........... : 05.2016
# Version......... : 1.0
# Auteur ......... : pcccp chatonhub
# Description .... : Création NFO automatique
# Prerequis ...... : mediainfo
# Execution ...... : "sh nfo.sh"



ls >>temp.txt
while read ligne  
do  
  mediainfo --LogFile="$ligne".nfo "$ligne"
done < temp.txt
rm temp.txt 
rm temp.txt.nfo
rm nfo.sh.nfo
