class AddZawodnik2nazToSklads < ActiveRecord::Migration[6.1]
  def change
    add_column :sklads, :zawodnik2naz, :string
  end
end
