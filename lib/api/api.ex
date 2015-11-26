defmodule Riot.Api do
  require Riot.Lol.Models.Region
  alias Riot.Lol.Models.Region, as: Region
  @doc """
  Returns the list of versions available through the API for a given region.

  ## Examples

      iex> Riot.Api.versions(:na)
      {:ok, ["5.23.1", "5.22.3", "5.22.2", "5.22.1", "5.21.1", "5.20.1"]}

      iex> Riot.Api.versions(:br)
      {:ok, ["5.22.3", "5.22.2", "5.22.1", "5.21.1", "5.20.1"]}

      iex> Riot.Api.versions(:not_a_valid_region)
      {:error, :invalid_region}

  ## Reference

  https://developer.riotgames.com/api/methods#!/1055/3630
  """
  @spec versions(Atom.t) :: {:ok, List.t} | {:error, Atom.t}
  def versions(region) when region in Region.keys, do: api_class.versions(region)
  def versions(_region), do: { :error, :invalid_region }

  defp api_class do
    if Mix.env == :test do
      Riot.Api.FakeApi
    else
      Riot.Api.RiotApi
    end
  end
end
