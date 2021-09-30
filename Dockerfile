FROM golang:latest
RUN export GO111MODULE=on
RUN go get github.com/prometheus/client_golang/prometheus/promhttp
RUN go build
CMD ["/main"]
