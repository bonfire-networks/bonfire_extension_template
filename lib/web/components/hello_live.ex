defmodule Bonfire.ExtensionTemplate.Web.HelloLive do
  use Bonfire.UI.Common.Web, :stateless_component

  prop extension, :string, default: nil
end
