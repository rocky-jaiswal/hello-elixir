defmodule CliTest do
  use ExUnit.Case
  doctest HelloElixir

  import HelloElixir.TwitterClient

  test "fetches tweets" do
    assert HelloElixir.CLI.fetch_tweets("usr_bin_rocky") != nil
  end

end
