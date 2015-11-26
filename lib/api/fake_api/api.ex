defmodule Riot.Api.FakeApi do
  @moduledoc false

  def versions(region), do: Riot.Api.FakeApi.LolStaticData.versions(region)
end
