FROM golang:latest
RUN mkdir /build
ADD . /build
WORKDIR /build
RUN export GO111MODULE=on
RUN go get github.com/prometheus/client_golang/prometheus/promhttp
RUN go build -o main .
CMD ["/build/main"] 
