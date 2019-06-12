FROM node:12
ADD  /dist /src/app/dist
WORKDIR /src/app/dist/track
RUN npm install
RUN npm install http-server -g
ENTRYPOINT [ "http-server" ]l