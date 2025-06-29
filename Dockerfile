FROM nginx:alpine

# Copy custom NGINX config
COPY nginx.conf /etc/nginx/nginx.conf

# Expose the port NGINX will listen on (SSH proxy port)
EXPOSE 2222

# Run NGINX in foreground
CMD ["nginx", "-g", "daemon off;"]
