package main

import (
	"log"
	"net/http"
)

func main() {
	serv := http.Server{
		Addr:    ":8000",
		Handler: routes(),
	}
	log.Println("Listening on ", serv.Addr)
	serv.ListenAndServe()
}
