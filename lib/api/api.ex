defmodule Riot.Api do
  require Riot.Lol.Models.Region
  alias Riot.Lol.Models.Region, as: Region

  @doc """
  Returns the list of versions available through the API for a given region.

  ## Examples

      iex> Riot.Api.summoner_by_name("katzenbar", :na)
      {:ok, %{ :id => 19868115, :name => "katzenbar", :profile_icon_id => 907, :revision_date => 1448479853000, :summoner_level => 30 }}

      iex> Riot.Api.summoner_by_name("katzenbar", :not_a_valid_region)
      {:error, :invalid_region}

  ## Reference

  https://developer.riotgames.com/api/methods#!/1055/3630
  """
  @spec summoner_by_name(String.t, Atom.t) :: {:ok, Map.t} | {:error, Atom.t}
  def summoner_by_name(name, region) when region in Region.keys, do: api_class.summoner_by_name(name, region)
  def summoner_by_name(_name, _region), do: { :error, :invalid_region }

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
