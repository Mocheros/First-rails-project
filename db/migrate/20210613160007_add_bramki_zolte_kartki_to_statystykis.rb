class AddBramkiZolteKartkiToStatystykis < ActiveRecord::Migration[6.1]
  def change
    add_column :statystykis, :zolte_kartki, :integer
  end
end
