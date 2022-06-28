class RemoveBramkiZolteKartkiFromStatystykis < ActiveRecord::Migration[6.1]
  def change
    remove_column :statystykis, :zolte_kartki, :integer
  end
end
