// Rust — GitHub highlights lifetimes, traits, match arms, and macros

use std::collections::HashMap;
use std::fmt;

#[derive(Debug, Clone)]
struct Repository {
    name: String,
    stars: u32,
    language: Option<String>,
    topics: Vec<String>,
}

impl Repository {
    fn new(name: impl Into<String>, stars: u32) -> Self {
        Self {
            name: name.into(),
            stars,
            language: None,
            topics: Vec::new(),
        }
    }

    fn with_language(mut self, lang: impl Into<String>) -> Self {
        self.language = Some(lang.into());
        self
    }

    fn with_topics(mut self, topics: Vec<&str>) -> Self {
        self.topics = topics.iter().map(|t| t.to_string()).collect();
        self
    }
}

impl fmt::Display for Repository {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        let lang = self.language.as_deref().unwrap_or("unknown");
        write!(f, "{} | ⭐{} | {}", self.name, self.stars, lang)?;
        if !self.topics.is_empty() {
            write!(f, " | [{}]", self.topics.join(", "))?;
        }
        Ok(())
    }
}

fn group_by_language(repos: &[Repository]) -> HashMap<&str, Vec<&Repository>> {
    let mut map: HashMap<&str, Vec<&Repository>> = HashMap::new();
    for repo in repos {
        let lang = repo.language.as_deref().unwrap_or("unknown");
        map.entry(lang).or_default().push(repo);
    }
    map
}

fn main() {
    let repos = vec![
        Repository::new("tokio-rs/tokio", 26000)
            .with_language("Rust")
            .with_topics(vec!["async", "runtime", "io"]),
        Repository::new("servo/servo", 27000)
            .with_language("Rust")
            .with_topics(vec!["browser", "engine"]),
        Repository::new("denoland/deno", 94000)
            .with_language("Rust")
            .with_topics(vec!["javascript", "typescript", "runtime"]),
    ];

    for repo in &repos {
        println!("{repo}");
    }

    let by_lang = group_by_language(&repos);
    println!("\nBy language:");
    for (lang, group) in &by_lang {
        println!("  {lang}: {} repos", group.len());
    }
}
