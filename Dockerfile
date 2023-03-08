# Use an official nginx runtime as a parent image
FROM nginx:latest

# Set the working directory to the nginx document root
WORKDIR /usr/share/nginx/html

# Copy the contents of the local 'html' directory into the container at the working directory
COPY template/ .

# Expose port 80 to the Docker host
EXPOSE 80

# Start the nginx server
CMD ["nginx", "-g", "daemon off;"]
