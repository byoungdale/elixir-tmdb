defmodule Tmdb.Trending do
  use Tmdb.Base

  @doc """
  Returns all trending items (movies, tv, and persons) for the time_window (day or week)

  ## Examples

      iex> all("day")
      %{
          "page" => 1,
          "results" => [%{}, ...],
          "total_pages" => 1000,
          "total_results" => 20000
      }
  """
  def all(time_window, params \\ %{}) do
    get!("trending/all/day?#{URI.encode_query(params)}").body
  end

  @doc """
  Returns all trending items (movies, tv, and persons) for the time_window (day or week)

  ## Examples

      iex> movie("week")
      %{
          "page" => 1,
          "results" => [%{}, ...],
          "total_pages" => 1000,
          "total_results" => 20000
      }
  """
  def movie(time_window, params \\ %{}) do
    get!("trending/movie/day?#{URI.encode_query(params)}").body
  end

  @doc """
  Returns all trending items (movies, tv, and persons) for the time_window (day or week)

  ## Examples

      iex> tv("day")
      %{
          "page" => 1,
          "results" => [%{}, ...],
          "total_pages" => 1000,
          "total_results" => 20000
      }
  """
  def tv(time_window, params \\ %{}) do
    get!("trending/tv/day?#{URI.encode_query(params)}").body
  end

  @doc """
  Returns all trending items (movies, tv, and persons) for the time_window (day or week)

  ## Examples

      iex> person("week")
      %{
          "page" => 1,
          "results" => [%{}, ...],
          "total_pages" => 1000,
          "total_results" => 20000
      }
  """
  def person(time_window, params \\ %{}) do
    get!("trending/person/day?#{URI.encode_query(params)}").body
  end
end
