class AddPorazkiToZespols < ActiveRecord::Migration[6.1]
  def change
    add_column :zespols, :porazki, :integer
  end
end
