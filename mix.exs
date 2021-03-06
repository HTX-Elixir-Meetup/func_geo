defmodule FuncGeo.Mixfile do
  use Mix.Project

  def project do
    [app: :func_geo,
     version: "0.0.1",
     elixir: "~> 1.3-dev",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     docs: docs()]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:ex_doc, "~> 0.13", only: :dev}]
  end

  defp docs do
    [main: "FuncGeo", output: "docs", extras: ["README.md"]]
  end
end
