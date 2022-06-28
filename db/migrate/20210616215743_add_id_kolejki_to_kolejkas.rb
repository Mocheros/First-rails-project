class AddIdKolejkiToKolejkas < ActiveRecord::Migration[6.1]
  def change
    add_column :kolejkas, :id_kolejki, :integer
  end
end
