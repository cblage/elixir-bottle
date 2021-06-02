# [Bottle](https://hex.pm/packages/bottle)

[![Build Status](https://www.travis-ci.com/cblage/elixir-bottle.svg?branch=main)](https://www.travis-ci.com/cblage/elixir-bottle) [![Coverage Status](https://coveralls.io/repos/github/cblage/elixir-bottle/badge.svg?branch=main)](https://coveralls.io/github/cblage/elixir-bottle?branch=main)

## Installation

The the package can be installed from [Hex](https://hex.pm/packages/bottle),
by adding `bottle` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:bottle, "~> 0.1.2"}
  ]
end
```

## Usage

Just put this on top of your module and get all the guards available in your scope

```elixir
defmodule MyModule do
  use Bottle

  def foo(bar) when is_empty_binary(bar) do
    :empty
  end
end
```

You can also import the guards selectively, ie:

```elixir
import Bottle.Binary, only: [is_empty_binary: 1]
```

## Documentation

The documentation can be found at [https://hexdocs.pm/bottle](https://hexdocs.pm/bottle).
