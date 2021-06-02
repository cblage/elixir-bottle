defmodule Bottle do
  @moduledoc """
  Provides custom guards
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
