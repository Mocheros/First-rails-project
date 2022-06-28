class AddRemisyToZespols < ActiveRecord::Migration[6.1]
  def change
    add_column :zespols, :remisy, :integer
  end
end
