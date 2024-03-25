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
  def all(time_window, params \\ %{}) when time_window in ["day", "week"] do
    get!("trending/all/#{time_window}?#{URI.encode_query(params)}").body
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
  def movie(time_window, params \\ %{}) when time_window in ["day", "week"] do
    get!("trending/movie/#{time_window}?#{URI.encode_query(params)}").body
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
  def tv(time_window, params \\ %{}) when time_window in ["day", "week"] do
    get!("trending/tv/#{time_window}?#{URI.encode_query(params)}").body
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
  def person(time_window, params \\ %{}) when time_window in ["day", "week"] do
    get!("trending/person/#{time_window}?#{URI.encode_query(params)}").body
  end
end
