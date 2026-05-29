// Java — GitHub highlights annotations, generics, and class hierarchies

package com.example.showcase;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.time.Duration;
import java.util.*;
import java.util.concurrent.CompletableFuture;

public class GitHubClient {

    private final HttpClient client;
    private static final String BASE_URL = "https://api.github.com";

    public record Repository(
        String fullName,
        int stars,
        int forks,
        String language,
        String description
    ) {}

    public GitHubClient() {
        this.client = HttpClient.newBuilder()
            .connectTimeout(Duration.ofSeconds(10))
            .build();
    }

    public CompletableFuture<String> fetchRaw(String path) {
        var request = HttpRequest.newBuilder()
            .uri(URI.create(BASE_URL + path))
            .header("Accept", "application/vnd.github+json")
            .GET()
            .build();

        return client.sendAsync(request, HttpResponse.BodyHandlers.ofString())
            .thenApply(HttpResponse::body);
    }

    public static void main(String[] args) {
        var ghClient = new GitHubClient();
        var repos = List.of("torvalds/linux", "golang/go", "rust-lang/rust");

        repos.stream()
            .map(r -> ghClient.fetchRaw("/repos/" + r))
            .forEach(f -> f.thenAccept(body ->
                System.out.println("Fetched " + body.length() + " bytes"))
            );
    }
}
