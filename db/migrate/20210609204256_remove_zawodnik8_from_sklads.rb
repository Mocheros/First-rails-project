class RemoveZawodnik8FromSklads < ActiveRecord::Migration[6.1]
  def change
    remove_column :sklads, :zawodnik8, :integer
  end
end
