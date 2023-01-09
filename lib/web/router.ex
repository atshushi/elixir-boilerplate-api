defmodule Boilerplate.Router do
  use Boilerplate.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Boilerplate do
    pipe_through :api

    get "/hello-world", HelloWorldController, :execute
  end
end
