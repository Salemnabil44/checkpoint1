#!/bin/bash

# Vérifier si un argument ( un nom d'utilisateur ) a été fourni
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 username1 [username2 ...]"
    exit 1
fi

# Boucle sur chaque nom d'utilisateur fourni en argument
for username in "$@"; do
    # Vérifier si l'argument (user) existe déjà
    if id "$username" &>/dev/null; then
        echo "L'utilisateur '$username' existe déjà."
    else
        # Si il n'existe pas créer l'utilisateur
        sudo useradd -m "$username"

        if [ $? -eq 0 ]; then
            echo "L'utilisateur '$username' a été créé avec succès."
        else
            echo "Échec de la création de l'utilisateur '$username'."
        fi
    fi
done

