use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :codebattle, Codebattle.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [  watchers: [npm: ["run", "watch"]]]


# Watch static and templates for browser reloading.
config :codebattle, Codebattle.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{priv/gettext/.*(po)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(slim|slime)$}
    ]
  ]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :codebattle, Codebattle.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("CODEBATTLE_DATABASE_USERNAME"),
  password: System.get_env("CODEBATTLE_DATABASE_PASSWORD"),
  database: "codebattle_dev",
  hostname: System.get_env("CODEBATTLE_DATABASE_HOSTNAME"),
  pool_size: 10
