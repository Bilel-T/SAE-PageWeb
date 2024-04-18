# Utiliser une image de base qui prend en charge Python
FROM python:3.8-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier des dépendances et les installer
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copier le reste des fichiers de l'application
COPY . .

# Exposer le port sur lequel l'application Flask s'exécute
EXPOSE 5000

# Commande pour démarrer l'application Flask
CMD ["python", "app.py"]

