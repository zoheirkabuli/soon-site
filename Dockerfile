# Use nginx as a parent image for the second build stage
FROM nginx:alpine-slim

# Remove the default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy the Flutter build from the first stage into the nginx server
COPY ./out /usr/share/nginx/html

# Expose port 80 of the Docker container
EXPOSE 80

# Start the nginx server
CMD ["nginx", "-g", "daemon off;"]