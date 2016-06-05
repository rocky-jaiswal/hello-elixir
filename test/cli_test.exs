defmodule CliTest do
  use ExUnit.Case
  doctest HelloWorld

  import HelloWorld.CLI

  test "parses name option" do
    assert HelloWorld.CLI.parse_args(["--name", "World"]) == "World"
  end

  test "returns blank string for bad options" do
    assert HelloWorld.CLI.parse_args(["--foo", "World"]) == ""
  end

  test "fetches tweets" do
    assert HelloWorld.CLI.fetch_tweets("usr_bin_rocky") != nil
  end
end
