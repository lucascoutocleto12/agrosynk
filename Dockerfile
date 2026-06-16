FROM node:20-alpine

WORKDIR /app

COPY package.json ./
RUN npm install --omit=dev

COPY flows.json ./
COPY settings.js ./

EXPOSE 1880

CMD ["npx", "node-red", "--settings", "./settings.js", "--userDir", "."]
