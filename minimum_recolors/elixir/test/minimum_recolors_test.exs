defmodule MinimumRecolorsTest do
  use ExUnit.Case
  doctest MinimumRecolors

  test "simple casse" do
    assert MinimumRecolors.minimum_recolors("WBBWWBBWBW", 7) == 3
  end

  test "0 case" do
    assert MinimumRecolors.minimum_recolors("WBWBBBW", 2) == 0
  end

  test "hard case" do
    assert MinimumRecolors.minimum_recolors("WBBWBBWWBBBWW", 5) == 1
  end

  test "all whites" do
    assert MinimumRecolors.minimum_recolors("WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW", 30) == 30
  end
end
