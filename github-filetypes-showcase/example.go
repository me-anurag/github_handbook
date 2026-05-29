// Go — GitHub highlights packages, interfaces, goroutines, and channels

package main

import (
	"encoding/json"
	"fmt"
	"net/http"
	"sync"
	"time"
)

type Repo struct {
	FullName    string `json:"full_name"`
	Stars       int    `json:"stargazers_count"`
	Forks       int    `json:"forks_count"`
	Language    string `json:"language"`
	Description string `json:"description"`
}

func fetchRepo(owner, name string) (*Repo, error) {
	url := fmt.Sprintf("https://api.github.com/repos/%s/%s", owner, name)
	client := &http.Client{Timeout: 10 * time.Second}

	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return nil, err
	}
	req.Header.Set("Accept", "application/vnd.github+json")

	resp, err := client.Do(req)
	if err != nil {
		return nil, err
	}
	defer resp.Body.Close()

	var repo Repo
	if err := json.NewDecoder(resp.Body).Decode(&repo); err != nil {
		return nil, err
	}
	return &repo, nil
}

func main() {
	repos := [][2]string{
		{"golang", "go"},
		{"kubernetes", "kubernetes"},
		{"moby", "moby"},
	}

	var wg sync.WaitGroup
	results := make(chan *Repo, len(repos))

	for _, r := range repos {
		wg.Add(1)
		go func(owner, name string) {
			defer wg.Done()
			if repo, err := fetchRepo(owner, name); err == nil {
				results <- repo
			}
		}(r[0], r[1])
	}

	go func() {
		wg.Wait()
		close(results)
	}()

	for repo := range results {
		fmt.Printf("%-40s ⭐ %6d  🍴 %5d  [%s]\n",
			repo.FullName, repo.Stars, repo.Forks, repo.Language)
	}
}
