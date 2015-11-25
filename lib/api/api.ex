defmodule Riot.Api do
  def versions(region \\ :na) do
    api_class.versions(region)
  end

  defp api_class do
    if Mix.env == :test do
      Riot.Api.FakeApi
    else
      Riot.Api.RiotApi
    end
  end
end
