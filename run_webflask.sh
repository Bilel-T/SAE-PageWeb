#!/bin/bash

# Nom de l'image Docker pour Flask
FLASK_IMAGE="flask"

# Nom du conteneur Flask
FLASK_CONTAINER="flask_contener"

# Port de l'application Flask
FLASK_PORT=5000

# Répertoire contenant l'application Flask
FLASK_APP_DIR="/var/lib/flask"

# Construire l'image Docker pour Flask
docker build -t $FLASK_IMAGE $FLASK_APP_DIR

# Lancer le conteneur Docker pour Flask
docker run -d \
    -p FLASK_PORT:5000 \
    --name FLASK_CONTAINER \
    $FLASK_IMAGE

