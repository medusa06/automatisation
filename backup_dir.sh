#!/bin/bash

################################
###  Script fait par Sofien  ###
################################


date_heure=$(date +"%Y-%m-%d_%H-%M-%S")
dir_save="backups"
dir_data="data"

cp -r $dir_data $dir_save

taille_dir_save=$(du -s "$dir_save" | awk '{print $1}')

if (($taille_dir_save > 5*1024*1024 )) then
    echo "Attention : la taille du dossier de sauvegarde depasse 5 Gb."
fi

echo "Date et heure de l'execution du script : "$date_heure
echo "Taille du dossier de sauvegarde : "$taille_dir_save
#echo "Espace disque disponible : "$disk_space
