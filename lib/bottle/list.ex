defmodule Bottle.List do
  @moduledoc """
  Provides custom guards for lists
  """

  require Bottle.Number

  @doc """
  Guard that passes for a non empty list

  ## Examples

      iex> is_non_empty_list([:foo])
      true
      
      iex> is_non_empty_list([])
      false
  """
  defguard is_non_empty_list(sub) when is_list(sub) and sub != []

  @doc """
  Guard that passes for an empty list

  ## Examples

      iex> is_empty_list([])
      true
      
      iex> is_empty_list([:foo])
      false     
  """
  defguard is_empty_list(sub) when sub == []

  @doc """
  Guard that passes for a list of a specific length

  ## Examples

      iex> is_list_with_length([], 0)
      true
      
      iex> is_list_with_length([:foo], 1)
      true
      
      iex> is_list_with_length([:foo], 2)
      false
  """
  defguard is_list_with_length(sub, expected_length)
           when is_list(sub) and Bottle.Number.is_non_neg_integer(expected_length) and
                  length(sub) == expected_length
end
