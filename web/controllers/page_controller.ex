defmodule DlabsApi.PageController do
  use DlabsApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
