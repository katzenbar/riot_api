defmodule Riot.Api.RiotApi do
  @moduledoc false
  require Riot.Lol.Models.Region
  alias Riot.Lol.Models.Region, as: Region

  def versions(region), do: call_api(:global, "/api/lol/static-data/#{region}/v1.2/versions")

  defp api_key, do: Application.get_env(:riot_api, :api_key)

  defp call_api(region, path) do
    query_string = "?api_key=#{api_key}"

    case HTTPoison.get("#{Region.regions[region].endpoint}#{path}#{query_string}") do
    { :ok, %HTTPoison.Response{ status_code: 200, body: body } } ->
      IO.puts body
    end
  end
end
