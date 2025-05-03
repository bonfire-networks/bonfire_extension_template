defmodule Bonfire.ExtensionTemplate do
  @moduledoc "./README.md" |> File.stream!() |> Enum.drop(1) |> Enum.join()

  use Bonfire.Common.Config
  alias Bonfire.Common.Utils
  import Untangle
  import Bonfire.Common.Modularity.DeclareHelpers

  declare_extension(
    "Bonfire.ExtensionTemplate",
    icon: "bi:app",
    description: l("An awesome extension")
    # default_nav: [
    #   Bonfire.ExtensionTemplate.Web.HomeLive
    # ]
  )

  def repo, do: Config.repo()
end
