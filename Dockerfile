FROM node:alpine as builder

WORKDIR /app

COPY package.json package.json

RUN yarn

COPY . .

EXPOSE 3000

CMD [ "yarn", "start" ]