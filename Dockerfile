#  configuration file

FROM node:20.19.0-alpine3.21


# installing curl


#  copy the source code to docker img 
WORKDIR /home/app/

COPY package*.json .
RUN npm install

COPY index.js  /home/app/index.js
EXPOSE 8000

CMD [ "index.js" ]