#!/bin/bash

# Vérifie si l'utilisateur a les droits d'exécution
if [[ $EUID -ne 0 ]]; then
   echo "Ce script doit être exécuté avec des privilèges de superutilisateur." 
   exit 1
fi

# Demande à l'utilisateur de saisir le nom du groupe
read -p "Entrez le nom du groupe à créer : " group_name

# Créer le groupe
if ! getent group "$group_name" > /dev/null; then
    groupadd "$group_name"
    echo "Groupe '$group_name' créé."
else
    echo "Le groupe '$group_name' existe déjà."
fi

# Demande à l'utilisateur de saisir le nom d'utilisateur
read -p "Entrez le nom d'utilisateur à créer : " user_name

# Créer l'utilisateur et l'ajouter au groupe
if ! id "$user_name" > /dev/null 2>&1; then
    useradd -m -g "$group_name" "$user_name"
    echo "Utilisateur '$user_name' créé et ajouté au groupe '$group_name'."
else
    echo "L'utilisateur '$user_name' existe déjà."
fi

echo "Script terminé."