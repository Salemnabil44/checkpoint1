#!/bin/bash

# Vérifier si au moins un argument (nom d'utilisateur) a été fourni
if [ "$#" -lt 1 ]; then
    echo "Veuillez taper le nom d'un utilisateur à créer."
    exit 1
fi

# Boucle sur chaque argument (nom d'utilisateur) fourni en argument
for username in "$@"; do
    # Vérifier si l'utilisateur existe déjà
    if id "$username" &>/dev/null; then
        echo "L'utilisateur '$username' existe déjà."
    else
        # Créer l'utilisateur
        sudo useradd -m "$username"

        if [ $? -eq 0 ]; then
            echo "L'utilisateur '$username' a été créé avec succès."
        else
            echo "Échec de la création de l'utilisateur '$username'."
        fi
    fi
done
