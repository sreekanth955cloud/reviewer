FROM node
ARG SRC_DIR=/var/node
RUN mkdir -p $SRC_DIR
COPY . $SRC_DIR
WORKDIR $SRC_DIR
RUN npm install 
EXPOSE 3000
CMD ./bin/www
