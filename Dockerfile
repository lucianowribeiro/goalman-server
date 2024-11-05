FROM node:22-alpine


RUN mkdir /app
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

CMD ["npm","run","dev"]