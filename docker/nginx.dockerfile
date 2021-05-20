FROM nginx:latest

# Copy nginx config
COPY docker/resources/etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf