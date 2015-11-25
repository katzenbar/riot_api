defmodule Riot.Api.FakeApi do
  def versions(region), do: Riot.Api.FakeApi.LolStaticData.versions(region)
end
