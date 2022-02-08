import Config

config :bonfire_extension_template,
  templates_path: "lib"

alias Bonfire.ExtensionTemplate.Accounts

config :bonfire_extension_template, Accounts.Emails,
  confirm_email: [subject: "Confirm your email - Bonfire"],
  forgot_password: [subject: "Reset your password - Bonfire"]
