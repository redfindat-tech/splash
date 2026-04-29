# Use a lightweight static server
FROM nginx:alpine

# Copy all files to Nginx's default web root
COPY . /usr/share/nginx/html

# Expose port (Render uses 10000 by default, but Nginx listens on 80)
EXPOSE 80

# Health check (optional but recommended)
HEALTHCHECK CMD wget --no-verbose --tries=1 --spider http://localhost || exit 1
