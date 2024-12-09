# Use an official OpenJDK runtime as a parent image
FROM openjdk:21

# Set the working directory inside the container
WORKDIR /usr/src/myapp

# Copy the Java code into the container
COPY tcpserver.java .

# Compile the Java program
RUN javac tcpserver.java

# Command to run the compiled Java program
CMD ["java", "tcpserver"]
