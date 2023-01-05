defmodule TmdbTest do
  use ExUnit.Case
  doctest Tmdb

  test "env test" do
    assert Application.fetch_env!(:tmdb, :api_key) != nil
  end

  test "find 1977s The Hobbit" do
    %{"title" => title} =
      Tmdb.Search.movies("the hobbit")
      |> Map.get("results")
      |> Enum.find(fn movie -> Map.get(movie, "release_date") == "1977-11-27" end)

    assert title == "The Hobbit"
  end
end
