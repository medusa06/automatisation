#!/bin/bash

################################
###  Script fait par Sofien  ###
################################


date_heure=$(date +"%Y-%m-%d_%H-%M-%S")
dir_save="/home/backups"
dir_data="/home/data"

cp -r "$data_dir" "$backup_dir"

taille_dir_save="du -sh "$dir_save"

if $taille_dir_save > 5*1024*1024 )) then
    echo "Attention : la taille du dossier de sauvegarde dépasse 5 Gb."
fi

echo "Date et heure de l'exécution du script : $current_date"
echo "Taille du dossier de sauvegarde : $backup_size"
echo "Espace disque disponible : $disk_space"
