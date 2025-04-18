# Dockerfile
FROM node:18-alpine

WORKDIR /app

COPY ./strapi-app . 

RUN npm install
RUN npm run build

EXPOSE 1337

CMD ["npm", "develop"]