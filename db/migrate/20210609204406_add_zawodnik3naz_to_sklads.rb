class AddZawodnik3nazToSklads < ActiveRecord::Migration[6.1]
  def change
    add_column :sklads, :zawodnik3naz, :string
  end
end
