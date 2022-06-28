class AddGoleStraconeToZespols < ActiveRecord::Migration[6.1]
  def change
    add_column :zespols, :gole_stracone, :integer
  end
end
