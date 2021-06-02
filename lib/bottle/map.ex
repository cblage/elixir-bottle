defmodule Bottle.Map do
  @moduledoc """
  Provides custom guards for maps
  """

  @doc """
  Guard that passes for an empty map

  ## Examples

      iex> is_empty_map(%{})
      true
      
      iex> is_empty_map(%{"foo" => :bar})
      false
      
      iex> is_empty_map(%{foo: "bar"})
      false

      iex> is_empty_map({"anything", "else"})
      false
  """
  defguard is_empty_map(term) when is_map(term) and term == %{}

  @doc """
  Guard that passes for an map containing at least 1 element

    ## Examples

      iex> is_non_empty_map(%{"foo" => :bar})
      true
      
      iex> is_non_empty_map(%{foo: "bar"})
      true
      
      iex> is_non_empty_map(%{})
      false
      
      iex> is_non_empty_map({"anything", "else"})
      false
  """
  defguard is_non_empty_map(term) when is_map(term) and term != %{}
end
