FROM --platform=linux/amd64 node:8.4.0

# Create app directory
RUN mkdir -p /usr/src/bitsoft
WORKDIR /usr/src/bitsoft

# Install app dependencies
COPY package.json /usr/src/bitsoft/
RUN npm install

# Bundle app source
COPY . /usr/src/bitsoft

EXPOSE 7777

CMD [ "node", "server.js"]