defmodule Riot.Api.FakeApi.Summoners do
  @moduledoc false

  def summoner_by_name(name, region) do
    {
      :ok,
      %{
        :id => 19868115, 
        :name => "katzenbar",
        :profile_icon_id => 907,
        :revision_date => 1448479853000,
        :summoner_level => 30
      }
    }
  end
end
