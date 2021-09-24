FROM alpine

RUN apk add --update nodejs npm curl

COPY . /src

WORKDIR /src

RUN npm install

EXPOSE 8081

ENTRYPOINT [ "node" , "./app.js" ]
