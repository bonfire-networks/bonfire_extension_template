import Config

#### Email configuration

# You will almost certainly want to change at least some of these

# include Phoenix web server boilerplate
# import_config "bonfire_web_phoenix.exs"

# include all used Bonfire extensions
import_config "bonfire_extension_template.exs"


#### Basic configuration

# You probably won't want to touch these. You might override some in
# other config files.

config :bonfire, :repo_module, Bonfire.Repo

config :phoenix, :json_library, Jason

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :mime, :types, %{
  "application/activity+json" => ["activity+json"]
}

config :bonfire_extension_template, :otp_app, :bonfire_extension_template
config :bonfire_common, :otp_app, :bonfire_extension_template
config :bonfire_extension_template, :repo_module, Bonfire.Repo
config :bonfire_extension_template, ecto_repos: [Bonfire.Repo]
config :bonfire_extension_template, :localisation_path, "priv/localisation"
config :bonfire_data_identity, Bonfire.Data.Identity.Credential, hasher_module: Argon2

# import_config "#{Mix.env()}.exs"
