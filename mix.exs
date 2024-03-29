defmodule RiotApi.Mixfile do
  use Mix.Project

  def project do
    [
      app: :riot_api,
      version: "0.0.1",
      elixir: "~> 1.1",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps,
   ]
  end

  def application do
    [
      applications: [
        :httpoison,
        :logger,
      ]
    ]
  end

  defp deps do
    [
      { :earmark, ">= 0.0.0", only: :dev },
      { :ex_doc, ">= 0.0.0", only: :dev },
      { :httpoison, "~> 0.8.0" },
    ]
  end
end
