defmodule CasedElixirExample.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Other workers...
      Cased.CLI.Supervisor
    ]

    opts = [strategy: :one_for_one, name: CasedElixirExample.Supervisor]
    res = Supervisor.start_link(children, opts)
    Cased.CLI.Runner.run
    res
  end
end
