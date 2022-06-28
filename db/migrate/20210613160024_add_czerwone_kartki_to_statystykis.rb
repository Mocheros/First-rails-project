class AddCzerwoneKartkiToStatystykis < ActiveRecord::Migration[6.1]
  def change
    add_column :statystykis, :czerwone_kartki, :integer
  end
end
