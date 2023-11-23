#!/bin/bash

# Répertoire contenant les images PNG
input_directory="./sources"
output_directory="."

# Boucle pour traiter chaque fichier PNG dans le répertoire
for image in "${input_directory}"/*.png; do
    # Réduction de la taille de l'image à 40x40 pixels et copie dans le répertoire de sortie
    convert "${image}" -resize 100x100 "${output_directory}/$(basename "${image}")"
done

echo "Traitement terminé."
