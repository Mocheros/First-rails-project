class RemoveZawodnik4FromSklads < ActiveRecord::Migration[6.1]
  def change
    remove_column :sklads, :zawodnik4, :integer
  end
end
