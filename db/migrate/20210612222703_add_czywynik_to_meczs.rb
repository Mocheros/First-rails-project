class AddCzywynikToMeczs < ActiveRecord::Migration[6.1]
  def change
    add_column :meczs, :czywynik, :integer
  end
end
