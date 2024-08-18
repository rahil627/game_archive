defmodule Mix.Tasks.DeleteBuild do
  use Mix.Task

  def run(_) do
    # IO.puts("Running my custom shell command...")
    # System.cmd("echo", ["Hello from my custom task"])
    #System.cmd("rm", [".\_build\\", "-Force"]) # TODO: test pwd
    System.cmd("pwsh", ["-c", "pwd"]) # NOTE: workaround: only can run executables, not shell built-in commands

    #System.shell("cd") # no clue what the "OS shell" is, command prompt?
  end
end
