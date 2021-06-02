defmodule Bottle.MixProject do
  use Mix.Project

  def project do
    [
      app: :bottle,
      package: package(),
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "Bottle",
      description: "Provides custom guards",
      source_url: "https://github.com/cblage/elixir-bottle"
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

  def package do
    [
      maintainers: ["cblage"],
      licenses: ["BSD 3-Clause"],
      links: %{"GitHub" => "https://github.com/cblage/elixir-bottle"}
    ]
  end
end
