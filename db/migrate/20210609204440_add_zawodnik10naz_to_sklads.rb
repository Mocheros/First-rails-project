class AddZawodnik10nazToSklads < ActiveRecord::Migration[6.1]
  def change
    add_column :sklads, :zawodnik10naz, :string
  end
end
