defmodule Boilerplate.Endpoint do
  use Phoenix.Endpoint, otp_app: :boilerplate

  plug Plug.RequestId
  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Phoenix.json_library()

  plug Plug.MethodOverride
  plug Plug.Head
  plug Boilerplate.Router
end
