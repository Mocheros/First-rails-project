class AddCzerwoneKartkiToZawodniks < ActiveRecord::Migration[6.1]
  def change
    add_column :zawodniks, :czerwone_kartki, :integer
  end
end
