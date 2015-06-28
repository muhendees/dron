defmodule Dron.Repo.Migrations.Images do
  use Ecto.Migration

  def change do
		create table(:images) do
			
			add :name, :string
			add :desc, :string
			add :file_name, :string
			add :file_size, :integer
			add :content_type, :string
			
			timestamps
		end
	end
end
