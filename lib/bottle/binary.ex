defmodule Bottle.Binary do
  @moduledoc """
  Provides custom guards for binaries
  """

  @doc """
  Guard that passes for an empty binary

  ## Examples

    iex> is_empty_binary("")
    true
    
    iex> is_empty_binary("foo")
    false
    
    iex> is_empty_binary({"anything", "else"})
    false
  """
  defguard is_empty_binary(sub) when is_binary(sub) and sub == ""

  @doc """
  Guard that passes for a non-empty binary

  ## Examples

    iex> is_non_empty_binary("false")
    true

    iex> is_non_empty_binary("")
    false

    iex> is_non_empty_binary({"anything", "else"})
    false
  """
  defguard is_non_empty_binary(sub) when is_binary(sub) and sub != ""

  @doc """
  Guard that passes for a binary shorter than max_length

  ## Examples

    iex> is_binary_shorter_than("foo", 200)
    true
    
    iex> is_binary_shorter_than("", 2)
    true
    
    iex> is_binary_shorter_than("foo", 2)
    false
    
    iex> is_binary_shorter_than({"anything", "else"}, 2)
    false
  """
  defguard is_binary_shorter_than(sub, max_length)
           when is_binary(sub) and byte_size(sub) < max_length

  @doc """
  Guard that passes for a non-empty-binary shorter than max_length

  ## Examples
  
    iex> is_non_empty_binary_shorter_than("foo", 200)
    true
    
    iex> is_non_empty_binary_shorter_than("", 2)
    false
    
    iex> is_non_empty_binary_shorter_than("foo", 2)
    false
    
    iex> is_non_empty_binary_shorter_than({"anything", "else"}, 2)
    false
  """
  defguard is_non_empty_binary_shorter_than(sub, max_length)
           when sub != "" and is_binary_shorter_than(sub, max_length)
end
