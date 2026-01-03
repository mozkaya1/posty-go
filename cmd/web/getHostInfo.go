package main

import (
	"encoding/json"
	"net/http"
	"os"
	"os/exec"
	"time"
)

type Data struct {
	Host        string
	CurrentTime time.Time
	Uptime      string
}

func getHostTime(w http.ResponseWriter, r *http.Request) {
	w.Header().Add("Content-Type", "application/json")
	host, _ := os.Hostname()
	cmd := exec.Command("uptime")
	uptime, _ := cmd.Output()
	responseData := Data{
		Host:        host,
		CurrentTime: time.Now(),
		Uptime:      string(uptime),
	}
	json.NewEncoder(w).Encode(responseData)
}
