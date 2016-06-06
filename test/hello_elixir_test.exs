defmodule HelloElixirTest do
  use ExUnit.Case
  doctest HelloElixir

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "the greeting" do
    assert HelloElixir.greet == :ok
  end
end
