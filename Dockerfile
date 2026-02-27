# Use official nginx image
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy our html file to nginx directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 8000

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
