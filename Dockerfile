FROM node:14-alpine
WORKDIR /app
COPY package.json ./
COPY .npmrc ./
RUN npm install --verbose