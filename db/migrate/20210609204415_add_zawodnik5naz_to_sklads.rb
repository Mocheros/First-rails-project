class AddZawodnik5nazToSklads < ActiveRecord::Migration[6.1]
  def change
    add_column :sklads, :zawodnik5naz, :string
  end
end
