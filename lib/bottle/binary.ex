defmodule Bottle.Binary do
  defguard is_empty_binary(sub) when is_binary(sub) and sub == ""
  defguard is_non_empty_binary(sub) when is_binary(sub) and sub != ""

  defguard is_binary_shorter_than(sub, max_length)
           when is_binary(sub) and byte_size(sub) < max_length

  defguard is_non_empty_binary_shorter_than(sub, max_length)
           when sub != "" and is_binary_shorter_than(sub, max_length)
end
