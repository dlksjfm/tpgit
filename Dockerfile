# Utilisez l'image openjdk comme base
FROM openjdk:11

# Copiez le fichier JAR de votre application dans le conteneur
COPY app/HelloWorld.jar /app/HelloWorld.jar
COPY app/Greeter.jar /app/Greeter.jar

# Spécifiez le répertoire de travail
WORKDIR /app

# Commande à exécuter lorsque le conteneur démarre
CMD ["java", "-jar", "HelloWorld.jar","Greeter.jar"]
