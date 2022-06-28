class RemoveZawodnik2FromSklads < ActiveRecord::Migration[6.1]
  def change
    remove_column :sklads, :zawodnik2, :integer
  end
end
