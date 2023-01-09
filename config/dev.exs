import Config

config :boilerplate, Boilerplate.Endpoint,
  http: [port: System.get_env("PORT") || 3000],
  debug_errors: true

config :boilerplate, dev_routes: true

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :stacktrace_depth, 20

config :phoenix, :plug_init_mode, :runtime
