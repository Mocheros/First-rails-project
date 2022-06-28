class RemoveZawodnik3FromSklads < ActiveRecord::Migration[6.1]
  def change
    remove_column :sklads, :zawodnik3, :integer
  end
end
