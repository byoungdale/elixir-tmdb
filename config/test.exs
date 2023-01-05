import Config

config :tmdb,
  api_key: System.fetch_env!("TMDB_KEY")
