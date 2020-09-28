FROM node:lts-alpine3.9

# Create app directory
WORKDIR /usr/src/app

# Copy package files
COPY package.json ./
COPY yarn.lock ./

# Install npm packages
RUN yarn install

# Bundle app source
COPY . .

# Build our app for production
RUN npm run build

EXPOSE 3000
CMD [ "npm", "run", "start:prod" ]