# Step1
FROM golang:1.18
WORKDIR /usr/src/app
COPY go.mod go.sum ./

COPY . .
RUN go build -v -o /usr/local/bin/app ./...
EXPOSE 3000

CMD ["app"]