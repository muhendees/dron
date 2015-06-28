defmodule Images do
	use Ecto.Model

	schema "images" do
		
		field :name, :string
		field :desc, :string
		field :file_name, :string
		field :file_size, :integer
		field :content_type, :string

		timestamps
	end
end
