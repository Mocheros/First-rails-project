class AddCzysklad1ToSklads < ActiveRecord::Migration[6.1]
  def change
    add_column :sklads, :czysklad1, :integer
  end
end
