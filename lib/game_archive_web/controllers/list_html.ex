defmodule GameArchiveWeb.ListHTML do
  use GameArchiveWeb, :html

  embed_templates "list_html/*"

  @doc """
  Renders a list form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def list_form(assigns)
end
