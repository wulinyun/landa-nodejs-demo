FROM node
#FROM 10.128.1.201/system_containers/node:7.8-alpine
LABEL maintainer="lin.wu@landasoft.com"
LABEL description="nodejs image demo with koa"
LABEL version="1.0"
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . ./
EXPOSE 3000
CMD [ "npm", "start"]