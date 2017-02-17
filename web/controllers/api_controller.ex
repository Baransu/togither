defmodule Togither.ApiController do
  use Togither.Web, :controller

  def index(conn, _params) do
    json conn, %{}
  end
end
