#!/bin/bash

if [ $1 ]
then 
	fichier=$1  
else
	read -p "veuillez renseigner le nom du fichier: " fichier
fi

if [ -f $fichier ]
then
	while read USER id Group mdp 
	do
	echo   "$USER:$id:$Group:$mdp"
	done <$fichier
else
	echo "le nom du fichier $fichier n'existe pas !"
fi
while IFS=',' read -r id firstname lastname password status
do
 if [ "$role" == "Admin" ]; then
        # Créez un utilisateur avec des privilèges de super utilisateur
        useradd -m -G sudo -s /bin/bash -p "$(openssl passwd -1 $password)" "$firstname"
        echo "L'administrateur $firstname a été créé avec des privilèges de super utilisateur."
    fi
done < "$csv_file"
fi
