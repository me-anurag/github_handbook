// C++ — GitHub highlights templates, namespaces, and STL usage

#include <algorithm>
#include <format>
#include <iostream>
#include <ranges>
#include <string>
#include <vector>

struct Repository {
    std::string name;
    std::string language;
    int stars;
    int forks;

    [[nodiscard]] std::string summary() const {
        return std::format("{:<40} {:>7} ⭐  {:>6} 🍴  {}",
                           name, stars, forks, language);
    }
};

template <typename Container, typename Predicate>
auto filter_repos(const Container& repos, Predicate pred) {
    std::vector<Repository> result;
    std::ranges::copy_if(repos, std::back_inserter(result), pred);
    return result;
}

int main() {
    std::vector<Repository> repos = {
        {"torvalds/linux",     "C",      175000, 52000},
        {"llvm/llvm-project",  "C++",     29000,  11000},
        {"microsoft/STL",      "C++",     10000,   1500},
        {"google/googletest",  "C++",     34000,   9800},
        {"nlohmann/json",      "C++",     42000,   6700},
        {"grpc/grpc",          "C++",     42000,  10500},
    };

    auto cpp_repos = filter_repos(repos,
        [](const Repository& r) { return r.language == "C++"; });

    std::ranges::sort(cpp_repos,
        [](const auto& a, const auto& b) { return a.stars > b.stars; });

    std::cout << "C++ Repositories by Stars\n";
    std::cout << std::string(60, '-') << "\n";
    for (const auto& repo : cpp_repos) {
        std::cout << repo.summary() << "\n";
    }

    return 0;
}
