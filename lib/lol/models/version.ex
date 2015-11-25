defmodule Riot.Lol.Models.Version do
  alias Riot.Api, as: Api

  @doc """
  Returns a list of all versions available through the api.

  ## Examples

      iex> Riot.Lol.Models.Version.all
      {:ok, ["5.23.1", "5.22.3", "5.22.2", "5.22.1", "5.21.1", "5.20.1"]}

      iex> Riot.Lol.Models.Version.all(:br)
      {:ok, ["5.22.3", "5.22.2", "5.22.1", "5.21.1", "5.20.1"]}

      iex> Riot.Lol.Models.Version.all(:made_up_region)
      {:error, :invalid_region}
  """
  def all(region \\ :na) do
    Api.versions(region)
  end

  @doc """
  Returns the latest client version available to the api.

  ## Examples

      iex> Riot.Lol.Models.Version.latest
      {:ok, "5.23.1"}

      iex> Riot.Lol.Models.Version.latest(:br)
      {:ok, "5.22.3"}

      iex> Riot.Lol.Models.Version.latest(:made_up_region)
      {:error, :invalid_region}
  """
  def latest(region \\ :na) do
    case Api.versions(region) do
      { :ok, versions } ->
        { :ok, List.first(versions) }
      error ->
        error
    end
  end
end
