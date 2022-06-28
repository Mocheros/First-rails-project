class RemoveZawodnik1FromSklads < ActiveRecord::Migration[6.1]
  def change
    remove_column :sklads, :zawodnik1, :integer
  end
end
