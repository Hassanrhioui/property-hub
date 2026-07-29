# Use official ultra-lightweight NGINX Alpine image
FROM nginx:alpine

# Copy our static website files into NGINX's default web directory
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css

# Expose standard HTTP port 80
EXPOSE 80

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]