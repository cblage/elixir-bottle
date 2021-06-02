defmodule BottleTest do
  use ExUnit.Case

  doctest Bottle.Binary, import: true
  doctest Bottle.List, import: true
  doctest Bottle.Map, import: true
  doctest Bottle.Number, import: true
end
