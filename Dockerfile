FROM golang:alpine

RUN apk update && apk add git && rm -rf /var/cache/apk/*

RUN go get github.com/asciimoo/morty

EXPOSE 3000

CMD ['sh', '-c', 'morty -key "$MORTY_KEY" -listen 0.0.0.0:3000']
