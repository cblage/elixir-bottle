defmodule Bottle.MixProject do
  use Mix.Project

  def project do
    [
      app: :bottle,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  def deps do
    [
      {:ex_doc, "~> 0.24", only: :dev, runtime: false},
    ]
  end
end
