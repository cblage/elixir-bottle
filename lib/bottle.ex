defmodule Bottle do
  @moduledoc """
  Provides custom guards
  """

  @doc """
  Calling `use Bottle` will import all the guards into your context
  """
  defmacro __using__(opts \\ []) do
    quote do
      import Bottle.Binary, unquote(opts)
      import Bottle.List, unquote(opts)
      import Bottle.Number, unquote(opts)
      import Bottle.Map, unquote(opts)
    end
  end
end
