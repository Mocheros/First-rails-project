class AddGodzinaToMeczs < ActiveRecord::Migration[6.1]
  def change
    add_column :meczs, :godzina, :time
  end
end
