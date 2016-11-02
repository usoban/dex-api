defmodule DlabsApi.Router do
  use DlabsApi.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", DlabsApi do
    pipe_through :api

    resources "/posts", PostController, except: [:new, :edit]
  end

  scope "/", DlabsApi do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end
end
