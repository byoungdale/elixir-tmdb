defmodule Tmdb.Discover do
  use Tmdb.Base

  @doc """
  Returns general results based on params given

  ## Examples

      iex> discover(%{"primary_release_date.gte" => "2023"})
      %{
          "page" => 1,
          "results" => [%{}, ...],
          "total_pages" => 105,
          "total_results" => 2083
      }
  """
  def discover(params \\ %{}) do
    get!("discover/movie?#{URI.encode_query(params)}").body
  end
end
