# qui vous permet de définir l'image source
FROM node:12.18.1

# qui vous permet de définir votre répertoire de travail
WORKDIR /usr/src/app

COPY . .

# qui vous permet d’exécuter des commandes dans votre conteneur
RUN npm install --production

# qui permet de définir les ports d'écoute par défaut
EXPOSE 9999

# qui permet de définir la commande par défaut lors de l’exécution de vos conteneurs Docker
CMD [ "node", "./build/main.js" ]