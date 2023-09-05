FROM node:18 as base

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both apckage.json AND package-lock.json are
# copied where available (npm@5+)
COPY package*.json ./

RUN rm -rf node_modules && npm install
# If you are building your code for production
# RUN npm ci --omit=dev

# BUNDLE app source
COPY . .

CMD ["node", "server.js"]
