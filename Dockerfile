FROM node:22.11.0-alpine

WORKDIR /

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build

EXPOSE 4000

CMD npm run chat