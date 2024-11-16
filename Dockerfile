# Step 1: Use OpenJDK base image
FROM openjdk:21-jdk-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the application JAR file from the target folder
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Step 4: Expose the port the application will run on
EXPOSE 8080

# Step 5: Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
