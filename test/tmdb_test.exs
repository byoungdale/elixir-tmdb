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

  test "test pagination" do
    %{"page" => page_one, "total_pages" => total_pages} =
      Tmdb.Search.movies("the lord of ")

    assert page_one == 1

    page_two =
      Tmdb.Search.movies("the lord of ", %{page: 2})
      |> Map.get("page")

    assert page_two == 2

    too_many_pages =
      Tmdb.Search.movies("the lord of ", %{page: total_pages + 1})

    assert too_many_pages["results"] == []
  end

  test "movie params" do
    result =
      Tmdb.Movies.find(122, %{append_to_response: "alternative_titles,release_dates,images"})

    assert Map.has_key?(result, "alternative_titles")
    assert Map.has_key?(result, "release_dates")
    assert Map.has_key?(result, "images")
  end
end
