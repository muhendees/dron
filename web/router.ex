defmodule Dron.Router do
  use Dron.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Dron do
    pipe_through :browser # Use the default browser stack

		resources "dronz", PageController
		
    get "/", PageController, :index
		
  end

  # Other scopes may use custom stacks.
  # scope "/api", Dron do
  #   pipe_through :api
  # end
end
