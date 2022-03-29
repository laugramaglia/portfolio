
FROM node:lts

WORKDIR /app

COPY package.json ./

RUN yarn install

ENV HOST 0.0.0.0
EXPOSE 80

COPY . .

CMD [ "yarn", "build" ]


