defmodule Riot.Lol.Models.Region do
  defmacro keys do
    quote do
      [
        :br,
        :eune,
        :euw,
        :kr,
        :lan,
        :las,
        :na,
        :oce,
        :pbe,
        :ru,
        :tr,
      ]
    end
  end

  defmacro regions do
    quote do
      %{
        :global => %{
          region: "Global",
          endpoint: "https://global.api.pvp.net"
        },
        :br => %{
          region: "BR",
          platform_id: "BR1",
          endpoint: "https://br.api.pvp.net",
        },
        :eune => %{
          region: "EUNE",
          platform_id: "EUN1",
          endpoint: "https://eune.api.pvp.net",
        },
        :euw => %{
          region: "EUW",
          platform_id: "EUW1",
          endpoint: "https://euw.api.pvp.net",
        },
        :kr => %{
          region: "KR",
          platform_id: "KR1",
          endpoint: "https://kr.api.pvp.net",
        },
        :lan => %{
          region: "LAN",
          platform_id: "LA1",
          endpoint: "https://lan.api.pvp.net",
        },
        :las => %{
          region: "LAS",
          platform_id: "LA1",
          endpoint: "https://las.api.pvp.net",
        },
        :na => %{
          region: "NA",
          platform_id: "NA1",
          endpoint: "https://na.api.pvp.net",
        },
        :oce => %{
          region: "OCE",
          platform_id: "OC1",
          endpoint: "https://oce.api.pvp.net",
        },
        :pbe => %{
          region: "PBE",
          platform_id: "PBE1",
          endpoint: "https://pbe.api.pvp.net",
        },
        :ru => %{
          region: "RU",
          platform_id: "RU1",
          endpoint: "https://RU.api.pvp.net",
        },
        :tr => %{
          region: "TR",
          platform_id: "TR1",
          endpoint: "https://tr.api.pvp.net",
        },
      }
    end
  end
end
