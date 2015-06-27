defmodule Dron.Repo.Migrations.CreateDrones do
  use Ecto.Migration

  def change do
		create table(:dronz) do
			
		add :name, :string
		add :year, :integer

		timestamps
		end
	end
end

