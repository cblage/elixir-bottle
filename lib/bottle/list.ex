defmodule Bottle.List do
  defguard is_non_empty_list(sub) when is_list(sub) and sub != []

  defguard is_empty_list(sub) when sub == []

  defguard is_list_with_length(sub, expected_length)
           when is_list(sub) and length(sub) == expected_length
end
