
FROM node:20-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production


COPY . .


ENV PORT=3000


EXPOSE 3000


CMD [ "node", "server.js" ]