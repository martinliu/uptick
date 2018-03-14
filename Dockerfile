FROM node
EXPOSE 8888
WORKDIR /usr/src/app
ADD appp-code . 
RUN npm install
RUN npm build
CMD [ "npm", "start" ]


