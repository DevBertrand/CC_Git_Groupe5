#!/bin/bash

# Vérifiez si le répertoire à sauvegarder est fourni
if [ -z "$1" ]; then
  echo "Usage: $0 /chemin/du/répertoire"
  exit 1
fi

# Définir le chemin du répertoire à sauvegarder
DIRECTORY="$1"

# Vérifiez si le répertoire existe
if [ ! -d "$DIRECTORY" ]; then
  echo "Le répertoire '$DIRECTORY' n'existe pas."
  exit 1
fi

# Créer le fichier de sauvegarde
BACKUP_FILE="backup_$(date +%Y%m%d).tar.gz"

# Exécuter la sauvegarde
tar -czf "$BACKUP_FILE" -C "$DIRECTORY" .

# Afficher un message de confirmation
echo "Sauvegarde de '$DIRECTORY' effectuée dans '$BACKUP_FILE'."
