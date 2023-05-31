# Use the official maven/Java 8 image to create a build artifact.
# https://hub.docker.com/_/maven
FROM maven:3.5-jdk-8 as builder

# Copy local code to the container image.
WORKDIR /app
COPY . .

# Build a release artifact.
RUN mvn package -DskipTests

# Use Tomcat image to deploy the war
FROM tomcat:9.0

# Copy the war file to Tomcat webapps directory
COPY --from=builder /app/target/my-jsp-app.war /usr/local/tomcat/webapps/
