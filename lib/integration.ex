defmodule Bonfire.ExtensionTemplate.Integration do
  alias Bonfire.Common.Config
  alias Bonfire.Common.Utils
  require Logger

  def repo, do: Config.get!(:repo_module)


end
