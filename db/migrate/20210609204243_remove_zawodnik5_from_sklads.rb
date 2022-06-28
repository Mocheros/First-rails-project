class RemoveZawodnik5FromSklads < ActiveRecord::Migration[6.1]
  def change
    remove_column :sklads, :zawodnik5, :integer
  end
end
