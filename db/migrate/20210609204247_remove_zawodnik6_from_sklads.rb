class RemoveZawodnik6FromSklads < ActiveRecord::Migration[6.1]
  def change
    remove_column :sklads, :zawodnik6, :integer
  end
end
