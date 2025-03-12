#  configuration file

from ubuntu

RUN curl -sL https://deb.nodesource.com/setup_22.x -o /tmp/nodesource_setup.sh
RUn bash /tmp/nodesource_setup.sh
RUN apt install nodejs

#  copy the source code to docker img 
COPY index.js  /home/app/index.js
COPY package-lock.json  /home/app/package-lock.json 
COPY package.json  /home/app/package.json 

WORKDIR /home/app/
RUN npm install