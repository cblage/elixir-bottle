# [Bottle](https://hex.pm/packages/bottle)

[![Build Status](https://www.travis-ci.com/cblage/elixir-bottle.svg?branch=main)](https://www.travis-ci.com/cblage/elixir-bottle) [![Coverage Status](https://coveralls.io/repos/github/cblage/elixir-bottle/badge.svg?branch=main)](https://coveralls.io/github/cblage/elixir-bottle?branch=main)

## Installation

The the package can be installed from [Hex](https://hex.pm/packages/bottle),
by adding `bottle` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:bottle, "~> 0.1.1"}
  ]
end
```

## Usage

If you add `use Bottle` at the top of your module, it will import all the custom guards. Othewise you can also import selectively, ie:

```elixir
import Bottle.Binary, only: [is_empty_binary: 1]
```

## Documentation

The documentation can be found at [https://hexdocs.pm/bottle](https://hexdocs.pm/bottle).
