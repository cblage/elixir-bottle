defmodule Bottle.MixProject do
  use Mix.Project

  @version "0.1.3"

  def project do
    [
      app: :bottle,
      package: package(),
      version: @version,
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      name: "Bottle",
      description: "Provides a set of guards to reduce boilerplate code",
      source_url: "https://github.com/cblage/elixir-bottle",
      homepage_url: "https://hex.pm/packages/bottle",
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test,
        "coveralls.travis": :test
      ]
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
      {:excoveralls, "~> 0.10", only: :test, optional: true, runtime: false}
    ]
  end

  def package do
    [
      maintainers: ["cblage"],
      licenses: ["BSD 3-Clause"],
      links: %{"GitHub" => "https://github.com/cblage/elixir-bottle"}
    ]
  end

  def docs() do
    [
      main: "readme",
      name: "Bottle",
      source_ref: "v#{@version}",
      canonical: "http://hexdocs.pm/bottle",
      source_url: "https://github.com/cblage/elixir-bottle",
      extras: [
        "README.md"
      ]
    ]
  end
end
