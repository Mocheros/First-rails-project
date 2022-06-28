class AddPozycjaToZawodniks < ActiveRecord::Migration[6.1]
  def change
    add_column :zawodniks, :pozycja, :string
  end
end
