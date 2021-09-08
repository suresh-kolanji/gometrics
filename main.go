package main

import (
	"fmt"
	"html"
	"log"
	"net/http"
	"github.com/prometheus/client_golang/prometheus/promhttp"
)


func main() {

http.Handle("/metrics", promhttp.Handler())
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello, %q", html.EscapeString(r.URL.Path))

	})

http.HandleFunc("/Servicetwo", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hi i am service two")
})

	log.Fatal(http.ListenAndServe(":8081", nil))

}
