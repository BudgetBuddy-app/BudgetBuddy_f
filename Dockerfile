# Dockerfile
FROM node:20.11

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD [ "npx", "nuxi", "dev" ]