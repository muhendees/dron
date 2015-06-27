defmodule Drones do
	use Ecto.Model


	schema "dronz" do

		field :name, :string
		field :year, :integer

		timestamps
	end
end
