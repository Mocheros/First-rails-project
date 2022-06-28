class AddCzas2ToMeczs < ActiveRecord::Migration[6.1]
  def change
    add_column :meczs, :czas2, :datetime
  end
end
