defmodule MinimumRecolors do
  @spec minimum_recolors(blocks :: String.t, k :: integer) :: integer # spec is given
  def minimum_recolors(blocks, k) do
    String.graphemes(blocks)
    |> (&( Enum.map(0..(length(&1) - k), fn(i) -> Enum.slice(&1, i..(k+i-1)) end)) ).()
    |> Enum.map(fn(l) -> Enum.count(l, fn(character) -> character == "W" end) end)
    |> Enum.min
  end
end
