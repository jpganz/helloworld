FROM public.ecr.aws/docker/library/node:18.20.4-slim

WORKDIR /user/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 80

CMD [ "node", "index.js" ]