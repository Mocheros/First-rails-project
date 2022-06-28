class AddRozegraneMeczeToZawodniks < ActiveRecord::Migration[6.1]
  def change
    add_column :zawodniks, :rozegrane_mecze, :integer
  end
end
