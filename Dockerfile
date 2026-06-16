FROM nodered/node-red:latest

COPY flows.json /data/flows.json
COPY settings.js /data/settings.js
COPY package.json /data/package.json

WORKDIR /data

RUN npm install --no-update-notifier --no-fund

EXPOSE 1880

CMD ["node-red", "--settings", "/data/settings.js", "--userDir", "/data"]
