package main

import (
	"html/template"
	"net/http"
)

func (app *app) getHome(w http.ResponseWriter, r *http.Request) {
	// w.Write([]byte("Home .... "))
	posts, err := app.posts.ALL()
	if err != nil {
		http.Error(w, err.Error(), 500)
		return
	}
	t, err := template.ParseFiles("./assets/templates/home.page.html")

	if err != nil {
		http.Error(w, err.Error(), 500)
		return
	}

	err = t.Execute(w, map[string]any{"Posts": posts})
	if err != nil {
		http.Error(w, err.Error(), 500)
	}

}
func (app *app) createPost(w http.ResponseWriter, r *http.Request) {
	// w.Write([]byte("Home .... "))
	t, err := template.ParseFiles("./assets/templates/post.create.page.html")

	if err != nil {
		http.Error(w, err.Error(), 500)
		return
	}

	err = t.Execute(w, nil)

}

func (app *app) storePost(w http.ResponseWriter, r *http.Request) {
	err := r.ParseForm()
	if err != nil {
		http.Error(w, err.Error(), 400)
		return
	}
	err = app.posts.Insert(
		r.PostForm.Get("title"),
		r.PostForm.Get("content"),
	)
	if err != nil {
		http.Error(w, err.Error(), 500)
		return
	}
	http.Redirect(w, r, "/", http.StatusFound)
}
