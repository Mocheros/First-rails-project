class AddZolteKartkiToZawodniks < ActiveRecord::Migration[6.1]
  def change
    add_column :zawodniks, :zolte_kartki, :integer
  end
end
