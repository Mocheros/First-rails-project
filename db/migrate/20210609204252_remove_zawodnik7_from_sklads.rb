class RemoveZawodnik7FromSklads < ActiveRecord::Migration[6.1]
  def change
    remove_column :sklads, :zawodnik7, :integer
  end
end
