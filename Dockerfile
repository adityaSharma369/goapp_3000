FROM golang:1.10.0

ARG version_default="$version"

WORKDIR /go/src/app

COPY . .

RUN go get -d -v ./...

RUN go install -v ./...

ENTRYPOINT ["app"]

