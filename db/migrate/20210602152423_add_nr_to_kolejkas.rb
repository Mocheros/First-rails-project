class AddNrToKolejkas < ActiveRecord::Migration[6.1]
  def change
    add_column :kolejkas, :nr, :integer
  end
end
