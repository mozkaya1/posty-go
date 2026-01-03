package main

import (
	"database/sql"
	"log"
	"net/http"

	_ "github.com/mattn/go-sqlite3"
	"github.com/mozkaya1/posty/internal/models/sqlite"
)

type app struct {
	posts *sqlite.PostModel
}

func main() {
	db, err := sql.Open("sqlite3", "./app.db")
	if err != nil {
		log.Fatal(err)
	}

	app := app{
		posts: &sqlite.PostModel{
			DB: db,
		},
	}
	serv := http.Server{
		Addr:    ":8000",
		Handler: app.routes(),
	}
	log.Println("Listening on ", serv.Addr)
	serv.ListenAndServe()
}
