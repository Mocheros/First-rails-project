class AddCzysklad2ToSklads < ActiveRecord::Migration[6.1]
  def change
    add_column :sklads, :czysklad2, :integer
  end
end
