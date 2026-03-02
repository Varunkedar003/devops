FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy application file as homepage
COPY app.txt /usr/share/nginx/html/index.html

# Expose port 80 (nginx default)
EXPOSE 80

# Nginx runs automatically via base image CMD
