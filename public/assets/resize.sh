#!/bin/bash

# Répertoire contenant les images PNG
input_directory="."

# Répertoire pour stocker les images originales
backup_directory="${input_directory}/sources"

# Création du répertoire de sauvegarde s'il n'existe pas
mkdir -p "$backup_directory"

# Boucle pour traiter chaque fichier PNG dans le répertoire
for image in "${input_directory}"/*.png; do
    # Copie de l'image originale dans le répertoire de sauvegarde
    cp "$image" "$backup_directory"

    # Réduction de la taille de l'image à 40x40 pixels
    convert "$image" -resize 100x100 "$image"
done

echo "Traitement terminé."
