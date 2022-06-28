class AddMeczeZespoluToZespols < ActiveRecord::Migration[6.1]
  def change
    add_column :zespols, :mecze_zespolu, :integer
  end
end
