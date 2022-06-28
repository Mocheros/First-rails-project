class AddZawodnik6nazToSklads < ActiveRecord::Migration[6.1]
  def change
    add_column :sklads, :zawodnik6naz, :string
  end
end
