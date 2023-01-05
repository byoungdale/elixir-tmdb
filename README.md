# TMDb

Elixir library for themoviedb.org's (tmdb) API.

This library is open source (MIT License) and welcomes contributions!

## Installation

1. Add movies to your list of dependencies in `mix.exs`:

```elixir
  def deps do
    [{:tmdb, git: "https://github.com/byoungdale/elixir-tmdb.git"}]
  end
```

You will need an <a href="https://www.themoviedb.org/account">account</a> and <a href="https://www.themoviedb.org/account">API key</a> from themoviedb.org.

```elixir
config :tmdb,
  api_key: System.fetch_env!("TMDB_KEY")
```

## Usage

```elixir
Tmdb.Search.movies("coherence") # Search for a specific movie
Tmdb.Search.tv("brain dead") # Search for a specific tv show

Tmdb.Movies.popular() # Movies that are currently popular
Tmdb.Movies.top() # Most highly rated movies regardless of release date
```
