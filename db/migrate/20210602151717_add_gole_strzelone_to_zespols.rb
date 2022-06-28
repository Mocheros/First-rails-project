class AddGoleStrzeloneToZespols < ActiveRecord::Migration[6.1]
  def change
    add_column :zespols, :gole_strzelone, :integer
  end
end
