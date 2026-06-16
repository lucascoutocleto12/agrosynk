FROM nodered/node-red:latest

COPY package.json /data/package.json
COPY flows.json /data/flows.json
COPY settings.js /data/settings.js

WORKDIR /data

RUN npm install --unsafe-perm --no-update-notifier --no-fund

EXPOSE 1880

CMD ["npm", "start"]