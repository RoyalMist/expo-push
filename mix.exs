defmodule ExpoPush.MixProject do
  use Mix.Project

  def project do
    [
      app: :expo_push,
      version: "0.0.1",
      elixir: "~> 1.13",
      source_url: "https://github.com/RoyalMist/expo-push",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description() do
    "Lib to send Expo push notifications from an elixir application."
  end

  defp package() do
    [
      name: "expo_push",
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/RoyalMist/expo-push"}
    ]
  end

  defp deps do
    [
      {:tesla, "~> 1.4"},
      {:hackney, "~> 1.18"},
      {:jason, "~> 1.4"},
      {:ex_doc, "~> 0.26", runtime: false},
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.1", only: [:dev, :test], runtime: false},
      {:sobelow, "~> 0.11", only: [:dev, :test], runtime: false}
    ]
  end
end
