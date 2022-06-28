class RemoveZawodnik10FromSklads < ActiveRecord::Migration[6.1]
  def change
    remove_column :sklads, :zawodnik10, :integer
  end
end
