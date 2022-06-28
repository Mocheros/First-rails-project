class AddCzasToMeczs < ActiveRecord::Migration[6.1]
  def change
    add_column :meczs, :czas, :string
  end
end
