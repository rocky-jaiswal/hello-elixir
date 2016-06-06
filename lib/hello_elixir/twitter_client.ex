defmodule HelloElixir.TwitterClient do

  def fetch_tweets(nick) do
    ExTwitter.user_timeline([screen_name: nick, count: 5]) |>
    Enum.map(fn(tweet) -> tweet.text end) |>
    Enum.join("\n-----\n")
  end

end
