class RemoveBramkiCzerwoneKartkiFromStatystykis < ActiveRecord::Migration[6.1]
  def change
    remove_column :statystykis, :czerwone_kartki, :integer
  end
end
