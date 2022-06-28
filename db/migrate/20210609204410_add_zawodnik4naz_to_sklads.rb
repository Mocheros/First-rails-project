class AddZawodnik4nazToSklads < ActiveRecord::Migration[6.1]
  def change
    add_column :sklads, :zawodnik4naz, :string
  end
end
