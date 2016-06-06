defmodule HelloElixir.CLI do

  def main(args) do
    args
    |> parse_args
    |> HelloElixir.TwitterClient.fetch_tweets
    |> pretty_print
  end

  def parse_args(args) do
    parsed = OptionParser.parse(args, strict: [name: :string])
    case parsed do
      { [name: greeter], _, _ } -> greeter
      _ -> ""
    end
  end

  def pretty_print(args) do
    IO.puts "-----\n#{args}!"
  end

end
