#we use debian
FROM debian:bookworm

# refresh apt-get
RUN apt-get update

#install somee utilities
RUN apt-get install -y curl make g++

#install nodejs
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash - 
RUN apt-get install -y nodejs

# install required npm packages
ADD package.json /package.json
RUN npm install

#set /src
WORKDIR /src

# open up external access
EXPOSE 8081

# run startup command
CMD ["node", "/src/server.js"]

