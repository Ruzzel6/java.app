Java application:
{A .class file is a file that contains Java bytecode, which is the compiled version of a Java source file (.java). When you write Java code in a .java file, you need to compile it using the Java compiler (javac). This process converts the human-readable Java source code into bytecode that the Java Virtual Machine (JVM) can understand and execute.}
=================

# Use openjdk base image
FROM openjdk:26-slim-bullseye

# Set working directory
WORKDIR /app

# Copy Java source code into container
COPY hello.java .

# Compile the Java source code To make .class file
RUN javac hello.java


# Set the command to run the compiled Java program
CMD ["java", "hello"]
~                         

>> docker build -t javahello.app .
>> docker run --name javahelloworld javahello.app

=================
