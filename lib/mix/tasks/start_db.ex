defmodule Mix.Tasks.StartDb do
  use Mix.Task

  def run(_) do
    # IO.puts("Running my custom shell command...")
    # System.cmd("echo", ["Hello from my custom task"])
    System.cmd("pg_ctl", ["start"])
  end
end
