defmodule Togither.PageController do
  use Togither.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
