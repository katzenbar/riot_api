defmodule Riot.Api.FakeApi.LolStaticData do
  @moduledoc false

  def versions(:na), do: { :ok, na_version_list }
  def versions(:br), do: { :ok, br_version_list }

  def na_version_list do
    [
      "5.23.1",
      "5.22.3",
      "5.22.2",
      "5.22.1",
      "5.21.1",
      "5.20.1",
    ]
  end

  def br_version_list do
    [
      "5.22.3",
      "5.22.2",
      "5.22.1",
      "5.21.1",
      "5.20.1",
    ]
  end
end
