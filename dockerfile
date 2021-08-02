FROM node:3.11-alpine
WORKDIR /usr/src/app
COPY package*.json./
RUN npm install
COPY . .
EXPOSE 5000
CMD ["node", "--", "./bin/www"]
