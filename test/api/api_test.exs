defmodule RiotApiTest do
  use ExUnit.Case
  doctest Riot.Api

  test "versions" do
    assert Riot.Api.versions == Riot.Api.FakeApi.LolStaticData.na_version_list
  end
end
