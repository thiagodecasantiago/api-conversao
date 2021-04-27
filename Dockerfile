FROM node:lts-alpine
USER node
RUN mkdir -p /home/node/api-conversao
WORKDIR /home/node/api-conversao
COPY package*.json ./
RUN npm install
EXPOSE 8080
COPY . .
CMD [ "node", "index.js" ]