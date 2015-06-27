defmodule Dron.PageController do
  use Dron.Web, :controller
	
  plug :action

  def index(conn, _params) do
    conn
		|> assign(:dronz, Repo.all(Drones))
		|> render("index.html")
	end
	
	
	def show(conn, %{"id" => id}) do
		{id, _} = Integer.parse(id)
		conn
		|> assign(:dronz, Repo.get(Drones, id))
		|> render("show.html")
	end

	def new(conn, _params) do
		render conn, "new.html"
	end

	
	def create(conn, %{"dron" => %{"name" => name, "year" => year}}) do
		{year, _} = Integer.parse(year)
		d = %Drones{name: name, year: year}
		Repo.insert!(d)

		redirect conn, to: page_path(conn, :index)
	end
	
	def edit(conn, %{"id" => id}) do
		{id, _} = Integer.parse(id)
		
		conn
		|> assign(:dron, Repo.get(Drones, id))
		|> render("edit.html")
	end
	
  def update(conn, %{"id" => id, "dron" => %{"name" => name, "year" => year}}) do
		{id, _} = Integer.parse(id)
		{year, _} = Integer.parse(year)
		d = Repo.get(Drones, id)
		d = %{d | name: name, year: year }
		Repo.update(d)
		
		redirect conn, to: page_path(conn, :show, d.id)
	end

	def delete(conn, %{"id" => id}) do
		{id, _} = Integer.parse(id)
		d = Repo.get(Drones, id)
		Repo.delete(d)
		redirect conn, to: page_path(conn, :index )
	end

end

