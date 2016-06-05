defmodule HelloWorld.CLI do

  def main(args) do
    args
    |> parse_args
    |> fetch_tweets
    |> pretty_print
  end

  def parse_args(args) do
    parsed = OptionParser.parse(args, strict: [name: :string])
    case parsed do
      { [name: greeter], _, _ } -> greeter
      _ -> ""
    end
  end

  def fetch_tweets(nick) do
    ExTwitter.user_timeline([screen_name: nick, count: 5]) |>
    Enum.map(fn(tweet) -> tweet.text end) |>
    Enum.join("\n-----\n")
  end

  def pretty_print(args) do
    IO.puts "-----\n#{args}!"
  end

end
