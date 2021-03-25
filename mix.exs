defmodule CasedElixirExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :cased_elixir_example,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {CasedElixirExample.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cased, github: "cased/cased-elixir", branch: "feature/cli"}
    ]
  end
end
