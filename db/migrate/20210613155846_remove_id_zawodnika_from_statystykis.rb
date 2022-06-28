class RemoveIdZawodnikaFromStatystykis < ActiveRecord::Migration[6.1]
  def change
    remove_column :statystykis, :id_zawodnika, :integer
  end
end
