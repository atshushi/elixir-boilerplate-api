defmodule Boilerplate do
  use Application

  def start(_type, _args) do
    children = [
      Boilerplate.Endpoint,
      {Phoenix.PubSub, name: Boilerplate.PubSub},
    ]

    opts = [strategy: :one_for_one, name: Boilerplate.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    Boilerplate.Endpoint.config_change(changed, removed)
    :ok
  end
end
