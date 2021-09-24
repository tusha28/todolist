FROM alpine

RUN apk add --update nodejs npm curl

COPY . /src

WORKDIR /src

RUN npm install

EXPOSE 3000

ENTRYPOINT [ "node" , "./app.js" ]
