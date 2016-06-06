defmodule CliTest do
  use ExUnit.Case
  doctest HelloElixir

  import HelloElixir.CLI

  test "parses name option" do
    assert HelloElixir.CLI.parse_args(["--name", "World"]) == "World"
  end

  test "returns blank string for bad options" do
    assert HelloElixir.CLI.parse_args(["--foo", "World"]) == ""
  end
end
