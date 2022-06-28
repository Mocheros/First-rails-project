class AddZawodnik9nazToSklads < ActiveRecord::Migration[6.1]
  def change
    add_column :sklads, :zawodnik9naz, :string
  end
end
