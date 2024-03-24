defmodule Bonfire.ExtensionTemplate.Web.HomeLive do
  use Bonfire.UI.Common.Web, :surface_live_view

  declare_extension(
    "ExtensionTemplate",
    icon: "bi:app",
    description: l("An awesome extension"),
    default_nav: [
      Bonfire.ExtensionTemplate.Web.HomeLive,
      Bonfire.ExtensionTemplate.Web.AboutLive
    ]
  )

  declare_nav_link(l("Home"), page: "home", icon: "ri:home-line", emoji: "🧩")

  on_mount {LivePlugs, [Bonfire.UI.Me.LivePlugs.LoadCurrentUser]}

  def mount(_params, _session, socket) do
    {:ok,
     assign(
       socket,
       page: "extension_template",
       page_title: "ExtensionTemplate"
     )}
  end

  def handle_event(
        "custom_event",
        _attrs,
        socket
      ) do
    # handle the event here
    {:noreply, socket}
  end
end
