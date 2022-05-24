#Vilken bas image skall användas.
FROM node 

#Sätta upp applikations katalogen i vår container
WORKDIR /app

COPY package.json /app

#Installera det som står i package.json filen.
RUN npm install

#Kopiera ifrån och till
COPY . /app

EXPOSE 3000

CMD ["node", "server.js"]