class AddIdZespoluToBramkis < ActiveRecord::Migration[6.1]
  def change
    add_column :bramkis, :id_zespolu, :integer
  end
end
