defmodule Boilerplate.HelloWorldController do
  use Boilerplate.Web, :controller

  def execute(conn, _params) do
    conn
    |> put_status(200)
    |> json(%{data: "Hello World!"})
  end
end
