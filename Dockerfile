# Use the official Python base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install prerequisites
RUN apt-get update && apt-get install -y cowsay fortune-mod netcat-openbsd

# Make port 4499 available to the world outside this container
EXPOSE 4499

# Run wisecow.sh when the container launches
CMD ["bash", "wisecow.sh"]

