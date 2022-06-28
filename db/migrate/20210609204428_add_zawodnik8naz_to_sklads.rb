class AddZawodnik8nazToSklads < ActiveRecord::Migration[6.1]
  def change
    add_column :sklads, :zawodnik8naz, :string
  end
end
