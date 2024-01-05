# Use the official Nginx base image
FROM nginx:latest

# Change the user to a non-root user
USER nginx

# Copy the custom Nginx configuration file
RUN cp nginx.conf /etc/nginx/conf.d/default.conf

# Create a directory for our custom HTML file
WORKDIR /usr/share/nginx/html

# Copy the custom HTML file into the container
RUN cp index.html .

# Expose port 8080 for OpenShift compatibility
EXPOSE 8080

# Command to start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
