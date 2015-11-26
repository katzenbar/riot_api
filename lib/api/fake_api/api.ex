defmodule Riot.Api.FakeApi do
  @moduledoc false

  def summoner_by_name(name, region), do:  Riot.Api.FakeApi.Summoners.summoner_by_name(name, region)
  def versions(region), do: Riot.Api.FakeApi.LolStaticData.versions(region)
end
