defmodule HelloElixir do

  def greet do
    IO.puts "Fetch last five tweets for a user."
  end

	def run(nick) do
		HelloElixir.CLI.main(["--name", nick])
	end

end
