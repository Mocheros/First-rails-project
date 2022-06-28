class AddZawodnik11nazToSklads < ActiveRecord::Migration[6.1]
  def change
    add_column :sklads, :zawodnik11naz, :string
  end
end
