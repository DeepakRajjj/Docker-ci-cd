# Use an existing nginx image as the base
FROM nginx:latest

# Copy HTML, CSS, and JavaScript files into the container
COPY index.html /usr/share/nginx/html
COPY index.css /usr/share/nginx/html
COPY index.js /usr/share/nginx/html

# Expose port 80 to allow external access
EXPOSE 80
