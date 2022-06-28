class AddZawodnik7nazToSklads < ActiveRecord::Migration[6.1]
  def change
    add_column :sklads, :zawodnik7naz, :string
  end
end
