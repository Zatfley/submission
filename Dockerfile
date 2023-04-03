FROM node:16

# Create app directory
WORKDIR /dicoding_backend

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /dicoding_backend

RUN npm install
# If you are building your code for production
# RUN npm ci --omit=dev

# Bundle app source
COPY . .

ENV PORT=9000
EXPOSE 9000
CMD [ "node", "./src/server.js" ]