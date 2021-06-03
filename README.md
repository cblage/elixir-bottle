# [Bottle](https://hex.pm/packages/bottle)

[![Build Status](https://www.travis-ci.com/cblage/elixir-bottle.svg?branch=main)](https://www.travis-ci.com/cblage/elixir-bottle)
[![Coverage Status](https://coveralls.io/repos/github/cblage/elixir-bottle/badge.svg?branch=main)](https://coveralls.io/github/cblage/elixir-bottle?branch=main)
[![Hex.pm](https://img.shields.io/hexpm/v/bottle)](https://hex.pm/packages/bottle)
[![Documentation](https://img.shields.io/badge/hexdocs-latest-blue.svg)](https://hexdocs.pm/bottle)

Bottle provides a set of custom guards which help reduce a lot of boilerplate coode.

You can find the package in [hex.pm](https://hex.pm/packages/bottle) and the documentation in [hexdocs.pm](https://hexdocs.pm/bottle).

## Installation

The the package can be installed from [Hex](https://hex.pm/packages/bottle),
by adding `bottle` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:bottle, "~> 1.0"}
  ]
end
```

## Usage

Just put `use Bottle` on top of your module and get all the guards available in your scope:

```elixir
defmodule MyModule do
  use Bottle

  def what_is(sub) when is_empty_binary(sub) do
    :empty_binary
  end

  def what_is(sub) when is_non_empty_binary_shorter_than(sub, 10) do
    :non_empty_binary_shorter_than_10_bytes
  end

  def what_is(sub) when is_non_empty_map(sub) do
    :non_empty_map
  end

  def what_is(sub) when is_empty_map(sub) do
    :empty_map
  end

  def what_is(sub) when is_zero(sub) do
    :zero_integer_or_float
  end

  def what_is(sub) when is_pos_number(sub) do
    :number_greater_than_0
  end

  def what_is(sub) when is_non_neg_integer(sub) do
    :integer_equal_or_greater_than_0
  end

  def what_is(sub) when is_non_zero_float(sub) do
    :non_zero_float
  end
end
```

You can also import the guards selectively using `import`, ie:

```elixir
import Bottle.Binary, only: [is_empty_binary: 1]
```

## Documentation

You can find the complete list of guards in the documentation: [https://hexdocs.pm/bottle](https://hexdocs.pm/bottle).

## License

Bottle is available under the [BSD 3-Clause aka "BSD New" license](http://www.tldrlegal.com/l/BSD3)
