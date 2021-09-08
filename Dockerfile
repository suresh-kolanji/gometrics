FROM golang:latest
RUN mkdir /build
WORKDIR /build
RUN export GO111MODULE=on
RUN go get github.com/prometheus/client_golang/prometheus/promhttp
RUN cd /build && go build
CMD ["/build/main"]