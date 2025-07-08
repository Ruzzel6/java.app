# Use openjdk base image
FROM openjdk:26-slim-bullseye

# Set working directory
WORKDIR /app

# Copy Java source code into container
COPY hello.java .

# Compile the Java source code
RUN javac hello.java


# Set the command to run the compiled Java program
CMD ["java", "hello"]
