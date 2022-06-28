class AddAsystyToZawodniks < ActiveRecord::Migration[6.1]
  def change
    add_column :zawodniks, :asysty, :integer
  end
end
