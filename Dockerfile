FROM mhart/alpine-node:latest
RUN mkdir /src
WORKDIR /src
ADD ./package.json /src/package.json
ADD ./index.js /src/index.js 
RUN npm install
EXPOSE 3000
CMD node index.js
