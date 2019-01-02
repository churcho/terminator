defmodule Mix.Tasks.Terminator do
  def run(_) do
    Application.ensure_all_started(:terminator)
    Mix.shell().info("Terminator v#{Application.spec(:terminator, :vsn)}")
    Mix.shell().info("A toolkit for data mapping and language integrated query for Elixir.")
    Mix.shell().info("\nAvailable tasks:\n")
    Mix.Tasks.Help.run(["--search", "terminator."])
  end
end