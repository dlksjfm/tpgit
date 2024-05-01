# Utilisez l'image openjdk comme base
FROM openjdk:11

# Copiez le fichier JAR de votre application dans le conteneur
COPY target/my-java-app.jar /app/my-java-app.jar

# Spécifiez le répertoire de travail
WORKDIR /app

# Commande à exécuter lorsque le conteneur démarre
CMD ["java", "-jar", "my-java-app.jar"]