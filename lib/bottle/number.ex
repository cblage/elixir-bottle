defmodule Bottle.Number do
  @moduledoc """
  Provides custom guards for numbers
  """

  @doc """
  Guard that passes when a number is 0 (including float 0.0)

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
  Guard that passes when a number is a pos_integer

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
  Guard that passes when a number is a pos_number

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

  @doc """
  Guard that passes when a number is a non_neg_integer

  ## Examples

      iex> is_non_neg_integer(1)
      true
      
      iex> is_non_neg_integer(1.1)
      false

      iex> is_non_neg_integer(0)
      true

      iex> is_non_neg_integer(-1)
      false

      iex> is_non_neg_integer({"anything", "else"})
      false
  """
  defguard is_non_neg_integer(sub) when is_integer(sub) and sub >= 0

  @doc """
  Guard that passes when a number is a non_neg_number

  ## Examples

      iex> is_non_neg_number(1)
      true
      
      iex> is_non_neg_number(1.1)
      true

      iex> is_non_neg_number(0)
      true

      iex> is_non_neg_number(-1)
      false

      iex> is_non_neg_number({"anything", "else"})
      false
  """
  defguard is_non_neg_number(sub) when is_number(sub) and sub >= 0

  @doc """
  Guard that passes when a number is a non_neg_float

  ## Examples

      iex> is_non_neg_float(1)
      false
      
      iex> is_non_neg_float(1.1)
      true

      iex> is_non_neg_float(0.0)
      true
      
      iex> is_non_neg_float(0)
      false

      iex> is_non_neg_float(-1)
      false
      
      iex> is_non_neg_float(-1.1)
      false

      iex> is_non_neg_float({"anything", "else"})
      false
  """
  defguard is_non_neg_float(sub) when is_float(sub) and sub >= 0

  @doc """
  Guard that passes when for 0.0

  ## Examples

      iex> is_zero_float(0.0)
      true
      
      iex> is_zero_float(0)
      false
      
      iex> is_zero_float(1)
      false
      
      iex> is_zero_float(1.1)
      false

      iex> is_zero_float(-1)
      false
      
      iex> is_zero_float(-1.1)
      false

      iex> is_zero_float({"anything", "else"})
      false
  """
  defguard is_zero_float(sub) when is_float(sub) and sub == 0.0

  @doc """
  Guard that passes when for any float that is not 0.0

  ## Examples

    iex> is_non_zero_float(1.1)
    true

    iex> is_non_zero_float(-1.1)
    true

    iex> is_non_zero_float(0.0)
    false
    
    iex> is_non_zero_float(0)
    false
    
    iex> is_non_zero_float(1)
    false
    
    iex> is_non_zero_float(-1)
    false
    
    iex> is_non_zero_float({"anything", "else"})
    false
  """
  defguard is_non_zero_float(sub) when is_float(sub) and sub != 0.0

  @doc """
  Guard that passes when for any positive float

  ## Examples

      iex> is_pos_float(1.1)
      true

      iex> is_pos_float(-1.1)
      false

      iex> is_pos_float(0.0)
      false
      
      iex> is_pos_float(0)
      false
      
      iex> is_pos_float(1)
      false
      
      iex> is_pos_float(-1)
      false
      
      iex> is_pos_float({"anything", "else"})
      false
  """
  defguard is_pos_float(sub) when is_float(sub) and sub > 0.0
end
