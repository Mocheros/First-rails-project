class AddCzydodanoToHome < ActiveRecord::Migration[6.1]
  def change
    add_column :homes, :czydodano, :integer
  end
end
