class AddIdZawodnikaToStatystykis < ActiveRecord::Migration[6.1]
  def change
    add_column :statystykis, :id_zawodnika, :integer
  end
end
