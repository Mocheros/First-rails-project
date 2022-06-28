class RemoveZawodnik9FromSklads < ActiveRecord::Migration[6.1]
  def change
    remove_column :sklads, :zawodnik9, :integer
  end
end
