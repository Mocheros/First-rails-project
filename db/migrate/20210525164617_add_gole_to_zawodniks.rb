class AddGoleToZawodniks < ActiveRecord::Migration[6.1]
  def change
    add_column :zawodniks, :gole, :integer, :references => "gole"
  end
end
