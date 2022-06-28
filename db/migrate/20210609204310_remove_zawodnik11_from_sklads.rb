class RemoveZawodnik11FromSklads < ActiveRecord::Migration[6.1]
  def change
    remove_column :sklads, :zawodnik11, :integer
  end
end
