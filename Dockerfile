FROM node:18-slim

WORKDIR /user/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 80

CMD [ "node", "index.js" ]