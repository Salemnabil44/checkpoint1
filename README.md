Exercice 1.1
![Partitions](https://github.com/Salemnabil44/checkpoint1/assets/161028838/6bf8dd97-4ca4-4f2c-9dc9-e9f7c4aa7ce4)
![Formatages](https://github.com/Salemnabil44/checkpoint1/assets/161028838/87ca1ada-e114-44a1-a460-d04ed23fdad0)
![Listing](https://github.com/Salemnabil44/checkpoint1/assets/161028838/7ad8d3cb-74d7-4ab1-b32e-6a7edf2ff5c6)

Exercice 1.2
![UUID](https://github.com/Salemnabil44/checkpoint1/assets/161028838/a34c45c6-a713-41ba-9c2b-9dc4f604c902)
![exercice 1 2](https://github.com/Salemnabil44/checkpoint1/assets/161028838/db8c9f4f-ab27-47e0-86d2-6512cfe4897a)

Exercice 2

#!/bin/bash

# Vérifier si au moins un argument (nom d'utilisateur) a été fourni
if [ "$#" -lt 1 ]; then
    echo "Veuillez taper le nom d'un utilisateur à créer. Exemple: ./addUsers.sh Salomé"
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

Exercice 3

1/ a) commande : cut -d: -f1 /etc/passwd
   b) deuxième façon de faire: à partir du terminal taper la
 commande "cd../..", puis "cd etc" et terminer par "cat passwd"

2/ Rappel pour les modifications des droits de fichiers

 0 : Aucun droit (---)
 1 : Exécution (--x)
 2 : Écriture (-w-)
 3 : Écriture et exécution (-wx)
 4 : Lecture (r--)
 5 : Lecture et exécution (r-x)
 6 : Lecture et écriture (rw-)
 7 : Lecture, écriture et exécution (rwx)

pour modifier le fichier il faudra taper la commande
 "chmod 744 myfile"

3/ (Je me suis aidé de Chatgpt)
- Créer le fichier .gitignore  
- Ajouter *.pdf au fichier .gitignore :
Ouvrez le fichier .gitignore avec un éditeur de texte.
Ajoutez une ligne contenant *.pdf. Cette entrée indique
à Git d'ignorer tous les fichiers dont l'extension est .pdf
- Enregistrer et valider les modifications avec un commit

4/ (Je me suis aidé de Chatgpt)
- Assurez-vous d'être sur la branche main : taper la commande "git checkout main"
- Effectuer la fusion : taper la commande "git merge test_valide"
- Finaliser la fusion : taper la commande
 "git commit -m "Fusion de la branche test_valide dans main"


5/ la commande qui permet l'affichage du texte est : echo 

6/ la commande qui permet de mettre en avant une tache est "fg %1"

7/
couche 2 : Liaison des données -> Les switches utilisent les adresse MAC
pour diriger et transférer les trames ethernet
couche 3 : réseaux -> gère le routage et la transmission des paquets IP
entres les réseaux

8/ cd -> set-location
   cp -> copy-item
   ls -> Get-ChildItem
   mkdir -> New-Item

9/ le playload sont les données réelles envoyé par l'emetteur au destinataire

10/ Cdir a remplacé les classes ip pour permettre une meilleure gestion des
adreesses ip tout en évitant le gaspillage d'adresse ip comme le faisait le
système des classes ip traditionnelles.
