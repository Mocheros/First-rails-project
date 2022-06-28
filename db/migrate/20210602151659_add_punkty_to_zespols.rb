class AddPunktyToZespols < ActiveRecord::Migration[6.1]
  def change
    add_column :zespols, :punkty, :integer
  end
end
