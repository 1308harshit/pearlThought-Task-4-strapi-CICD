# Dockerfile
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app/strapi-app

# Copy contents of the strapi-app folder into the container's working dir
COPY ./strapi-app/ .

# Install dependencies
RUN npm install

# Expose Strapi's default dev port
EXPOSE 1337

# Start in development mode
CMD ["npm", "run", "develop"]
