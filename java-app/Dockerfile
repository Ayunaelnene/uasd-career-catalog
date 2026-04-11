# Usamos una imagen de Maven para compilar y JDK 17 (puedes cambiar la versión)
FROM maven:3.8.4-openjdk-17-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el archivo de configuración de dependencias
COPY pom.xml .

# Descargamos las dependencias (esto ayuda a que los builds sean más rápidos)
RUN mvn dependency:go-offline

# Copiamos el código fuente
COPY src ./src

# Compilamos y ejecutamos la aplicación
RUN mvn clean install -DskipTests
CMD ["mvn", "exec:java"]
# Nota: Si no usan Spring Boot, el comando sería: CMD ["mvn", "exec:java"]
