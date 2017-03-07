defmodule Communicasts.PageController do
  use Communicasts.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
