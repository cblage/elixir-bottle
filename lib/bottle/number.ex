defmodule Bottle.Number do
  @moduledoc """
  Provides custom guards for numbers
  """

  @doc """
  Guards that passes when a number is 0 (including float 0.0)

  ## Examples
    iex> is_zero(0)
    true

    iex> is_zero(0.0)
    true

    iex> is_zero(1)
    false

    iex> is_zero({"anything", "else"})
    false
  """
  defguard is_zero(sub) when sub in [0, 0.0]

  @doc """
  Guards that passes when a number is a pos_integer

  ## Examples
    iex> is_pos_integer(1)
    true
    
    iex> is_pos_integer(1.1)
    false

    iex> is_pos_integer(0)
    false

    iex> is_pos_integer(-1)
    false

    iex> is_pos_integer({"anything", "else"})
    false
  """
  defguard is_pos_integer(sub) when is_integer(sub) and sub > 0

  @doc """
  Guards that passes when a number is a pos_number

  ## Examples
    iex> is_pos_number(1)
    true

    iex> is_pos_number(1.1)
    true

    iex> is_pos_number(0)
    false

    iex> is_pos_number(-1)
    false
    
    iex> is_pos_number(-1.1)
    false

    iex> is_pos_number({"anything", "else"})
    false
  """
  defguard is_pos_number(sub) when is_number(sub) and sub > 0
  defguard is_non_neg_integer(sub) when is_integer(sub) and sub >= 0
  defguard is_non_neg_number(sub) when is_number(sub) and sub >= 0
  defguard is_non_neg_float(sub) when is_float(sub) and sub >= 0
  defguard is_zero_float(sub) when is_float(sub) and sub == 0.0
  defguard is_non_zero_float(sub) when is_float(sub) and sub != 0.0
  defguard is_pos_float(sub) when is_float(sub) and sub > 0.0
end
