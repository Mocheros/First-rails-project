class AddZwyciestwaToZespols < ActiveRecord::Migration[6.1]
  def change
    add_column :zespols, :zwyciestwa, :integer
  end
end
